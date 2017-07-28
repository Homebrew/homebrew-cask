cask 'minikube' do
  version '0.21.0'
  sha256 '2a6960cfa2b5aed9fec8d8cbe357fa8f5776761ee5efa3dd26abccc894f4b453'

  # storage.googleapis.com/minikube was verified as official when first introduced to the cask
  url "https://storage.googleapis.com/minikube/releases/v#{version}/minikube-darwin-amd64"
  appcast 'https://github.com/kubernetes/minikube/releases.atom',
          checkpoint: '71b9148f998fdf663ebf04524a153e467557727e89ab0e62ad6617d42cf6aaa2'
  name 'Minikube'
  homepage 'https://github.com/kubernetes/minikube'

  depends_on formula: 'kubernetes-cli'
  container type: :naked

  binary 'minikube-darwin-amd64', target: 'minikube'

  zap delete: '~/.minikube'
end
