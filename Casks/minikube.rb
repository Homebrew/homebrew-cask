cask 'minikube' do
  version '0.23.0'
  sha256 '3d0c5581cd14f85637fb888c1e2e124152c4c9643a257ba90c8cd929d2c2b8b3'

  # storage.googleapis.com/minikube was verified as official when first introduced to the cask
  url "https://storage.googleapis.com/minikube/releases/v#{version}/minikube-darwin-amd64"
  appcast 'https://github.com/kubernetes/minikube/releases.atom',
          checkpoint: '9af1de2ccd5f79cf4774c5770d8b6a2ecb26d063097f0fff57e162cff32dbd02'
  name 'Minikube'
  homepage 'https://github.com/kubernetes/minikube'

  depends_on formula: 'kubernetes-cli'
  container type: :naked

  binary 'minikube-darwin-amd64', target: 'minikube'

  zap delete: '~/.minikube'
end
