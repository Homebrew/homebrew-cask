cask 'minikube' do
  version '0.24.0'
  sha256 '7db2045495db05a885c3ad9a0e5e7ff017ae1f2f1a835d9151142df0c6f1d192'

  # storage.googleapis.com/minikube was verified as official when first introduced to the cask
  url "https://storage.googleapis.com/minikube/releases/v#{version}/minikube-darwin-amd64"
  appcast 'https://github.com/kubernetes/minikube/releases.atom',
          checkpoint: '887bdc0d27dd79bb5a0326f0c7b248a2a62d1c22b80f172f0c3d530116ddf344'
  name 'Minikube'
  homepage 'https://github.com/kubernetes/minikube'

  depends_on formula: 'kubernetes-cli'
  container type: :naked

  binary 'minikube-darwin-amd64', target: 'minikube'

  zap trash: '~/.minikube'
end
