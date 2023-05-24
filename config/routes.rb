Rails.application.routes.draw do
	root 'items#index', as: 'home'
	get 'about' => 'pages#about', as: 'about'

	resources :items do
		resources :comments
	end
end
