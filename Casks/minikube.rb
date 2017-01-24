cask 'minikube' do
  version '0.15.0'
  sha256 'cc76cb68c9dfbe0317701e5d264ecf03cb3177a3a77906d901960c7adff6fc4a'

  url "https://github.com/kubernetes/minikube/releases/download/v#{version}/minikube-darwin-amd64"
  appcast 'https://github.com/kubernetes/minikube/releases.atom',
          checkpoint: '4facf8aca14f0a96adc1b3f32696938be460c8a66830c42ba3fa3242745acf95'
  name 'Minikube'
  homepage 'https://github.com/kubernetes/minikube'

  container type: :naked

  binary 'minikube-darwin-amd64', target: 'minikube'

  postflight do
    set_permissions "#{staged_path}/minikube-darwin-amd64", '0755'
  end

  zap delete: '~/.minikube'
end
