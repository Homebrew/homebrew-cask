cask 'minikube' do
  version '0.19.0'
  sha256 'efe27dd4f791403b90eefab8c1f6ea3c7f3115a7609f41e3189517f088e20f0e'

  # storage.googleapis.com/minikube was verified as official when first introduced to the cask
  url "https://storage.googleapis.com/minikube/releases/v#{version}/minikube-darwin-amd64"
  appcast 'https://github.com/kubernetes/minikube/releases.atom',
          checkpoint: 'e0fa248f6eea519d2bfb2b6eaedf5f809ea4fc669f721eb1c8574db10027a8cc'
  name 'Minikube'
  homepage 'https://github.com/kubernetes/minikube'

  container type: :naked

  binary 'minikube-darwin-amd64', target: 'minikube'

  zap delete: '~/.minikube'
end
