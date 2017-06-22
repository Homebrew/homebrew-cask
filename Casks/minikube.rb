cask 'minikube' do
  version '0.20.0'
  sha256 '591737b728745dbf01f634bf714353c416c2e56c39e2e0431910fa51783b7a19'

  # storage.googleapis.com/minikube was verified as official when first introduced to the cask
  url "https://storage.googleapis.com/minikube/releases/v#{version}/minikube-darwin-amd64"
  appcast 'https://github.com/kubernetes/minikube/releases.atom',
          checkpoint: 'e2e87909431bf9cb14f674040e819abe54f5184531dfeca9775b3a380a66755f'
  name 'Minikube'
  homepage 'https://github.com/kubernetes/minikube'

  depends_on formula: 'kubernetes-cli'
  container type: :naked

  binary 'minikube-darwin-amd64', target: 'minikube'

  zap delete: '~/.minikube'
end
