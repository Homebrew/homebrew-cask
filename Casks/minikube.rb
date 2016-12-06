cask 'minikube' do
  version '0.13.1'
  sha256 '77bc72679ca1beb09ad7f26ec8ba8b286283ddf7bee4e68163b88c5a439bc049'

  url "https://github.com/kubernetes/minikube/releases/download/v#{version}/minikube-darwin-amd64"
  appcast 'https://github.com/kubernetes/minikube/releases.atom',
          checkpoint: '4106778ab844a6d644b0d3a54b0c39ec0a21d03fab208c81b1d32f6fde64b607'
  name 'Minikube'
  homepage 'https://github.com/kubernetes/minikube'

  depends_on arch: :x86_64
  container type: :naked

  binary 'minikube-darwin-amd64', target: 'minikube'

  postflight do
    set_permissions "#{staged_path}/minikube-darwin-amd64", '0755'
  end
end
