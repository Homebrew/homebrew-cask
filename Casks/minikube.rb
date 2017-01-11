cask 'minikube' do
  version '0.15.0'
  sha256 'cc76cb68c9dfbe0317701e5d264ecf03cb3177a3a77906d901960c7adff6fc4a'

  url "https://github.com/kubernetes/minikube/releases/download/v#{version}/minikube-darwin-amd64"
  appcast 'https://github.com/kubernetes/minikube/releases.atom',
          checkpoint: '08c47fdf54bfb5bf62badf7685802bc107e4e7ba05b4d0440d71d14dad6f3c1e'
  name 'Minikube'
  homepage 'https://github.com/kubernetes/minikube'

  container type: :naked

  binary 'minikube-darwin-amd64', target: 'minikube'

  postflight do
    set_permissions "#{staged_path}/minikube-darwin-amd64", '0755'
  end
end
