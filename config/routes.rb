Rails.application.routes.draw do
  get 'lists/new'
# For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  get 'lists/edit'
  get 'top' => 'homes#top'
  post 'lists' => 'lists#create'
  get 'lists' => 'lists#index'
  #'lists#show'の設定を、listとして利用できる
  get 'lists/:id' => 'lists#show', as: 'list'
  
end
