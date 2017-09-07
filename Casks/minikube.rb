cask 'minikube' do
  version '0.22.0'
  sha256 '389c4cbbef69e760e8c5e226035d5afcad05540e2dd1d77439f903be119873f4'

  # storage.googleapis.com/minikube was verified as official when first introduced to the cask
  url "https://storage.googleapis.com/minikube/releases/v#{version}/minikube-darwin-amd64"
  appcast 'https://github.com/kubernetes/minikube/releases.atom',
          checkpoint: 'd0e205e95fd8667cc02ecfe643ea07cbdefd67a1a6841c1c0db8d86a1ca51a82'
  name 'Minikube'
  homepage 'https://github.com/kubernetes/minikube'

  depends_on formula: 'kubernetes-cli'
  container type: :naked

  binary 'minikube-darwin-amd64', target: 'minikube'

  zap delete: '~/.minikube'
end
