cask 'minikube' do
  version '0.26.0'
  sha256 '0b2c63c6f5a00525e679b01948edffcb16e3bdb37ea0db3ed89431dd0e4c3b3c'

  # storage.googleapis.com/minikube was verified as official when first introduced to the cask
  url "https://storage.googleapis.com/minikube/releases/v#{version}/minikube-darwin-amd64"
  appcast 'https://github.com/kubernetes/minikube/releases.atom',
          checkpoint: '31fb88014af1058d557bbcc5b9bcb0484ad34dd5327ea5c9ecac075d85b1a69e'
  name 'Minikube'
  homepage 'https://github.com/kubernetes/minikube'

  depends_on formula: 'kubernetes-cli'
  container type: :naked

  binary 'minikube-darwin-amd64', target: 'minikube'

  zap trash: '~/.minikube'
end
