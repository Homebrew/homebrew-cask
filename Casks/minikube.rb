cask 'minikube' do
  version '1.4.0'
  sha256 'ae19f66c8f4a5716a1c22125af1bcf3d41d1b81cfa5fe7fc76a50c0c46e2c409'

  # storage.googleapis.com/minikube was verified as official when first introduced to the cask
  url "https://storage.googleapis.com/minikube/releases/v#{version}/minikube-darwin-amd64"
  appcast 'https://github.com/kubernetes/minikube/releases.atom'
  name 'minikube'
  homepage 'https://github.com/kubernetes/minikube'

  depends_on formula: 'kubernetes-cli'
  container type: :naked

  binary 'minikube-darwin-amd64', target: 'minikube'

  zap trash: '~/.minikube'
end
