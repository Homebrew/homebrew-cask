cask 'minikube' do
  version '0.20.0'
  sha256 'c09b3ff9045a9b4c2bc9dab85b981f7846b77417bcfeb3248fc50cd985a5c5fe'

  # storage.googleapis.com/minikube was verified as official when first introduced to the cask
  url "https://storage.googleapis.com/minikube/releases/v#{version}/minikube-darwin-amd64"
  appcast 'https://github.com/kubernetes/minikube/releases.atom',
          checkpoint: 'c6be88cbd2d7e87f50c33d6be3ecd34a32eb07415659d27a8e745349357fedb4'
  name 'Minikube'
  homepage 'https://github.com/kubernetes/minikube'

  depends_on formula: 'kubernetes-cli'
  container type: :naked

  binary 'minikube-darwin-amd64', target: 'minikube'

  zap delete: '~/.minikube'
end
