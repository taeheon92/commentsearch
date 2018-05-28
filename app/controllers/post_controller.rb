class PostController < ApplicationController
    def index
        @post = Post.all
        @select = Post.where(:title => params[:search])
    end
    
    def create
        @post = Post.new
        @post.title = params[:post_title]
        @post.content = params[:post_content]
        @post.save
        redirect_to '/post/index'
    end
    
    def show
        @post = Post.find(params[:post_id])
        @comment = @post.comments
    end
    
    def update
    end
    
    def destroy
    end
    
    def new
    end
    
end
