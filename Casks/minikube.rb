cask 'minikube' do
  version '0.19.1'
  sha256 '1689ff1686c07da8b72a4dd2d472ec4d6cf3347eb33804024bb368f455fb4214'

  # storage.googleapis.com/minikube was verified as official when first introduced to the cask
  url "https://storage.googleapis.com/minikube/releases/v#{version}/minikube-darwin-amd64"
  appcast 'https://github.com/kubernetes/minikube/releases.atom',
          checkpoint: 'b72d7dd99f9e92b115c459ce532db88b70490a5eae48b189947c4881281ac5e0'
  name 'Minikube'
  homepage 'https://github.com/kubernetes/minikube'

  depends_on formula: 'kubernetes-cli'
  container type: :naked

  binary 'minikube-darwin-amd64', target: 'minikube'

  zap delete: '~/.minikube'
end
