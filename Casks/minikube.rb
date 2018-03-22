cask 'minikube' do
  version '0.25.1'
  sha256 '34e8bab34567e5bbe7a3d72ecb45d67972324e4f5ac6a1372db711414edb128e'

  # storage.googleapis.com/minikube was verified as official when first introduced to the cask
  url "https://storage.googleapis.com/minikube/releases/v#{version}/minikube-darwin-amd64"
  appcast 'https://github.com/kubernetes/minikube/releases.atom',
          checkpoint: 'c46cd02fc570b0987e47d3cc049940ea45461e7411dc5896af9598f1aed923e3'
  name 'Minikube'
  homepage 'https://github.com/kubernetes/minikube'

  depends_on formula: 'kubernetes-cli'
  container type: :naked

  binary 'minikube-darwin-amd64', target: 'minikube'

  zap trash: '~/.minikube'
end
