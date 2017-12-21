cask 'minikube' do
  version '0.24.1'
  sha256 'f89abc1caaf73f3a623c6c5b792833fab2e0667cd0d1ebaffc05918b3b81c164'

  # storage.googleapis.com/minikube was verified as official when first introduced to the cask
  url "https://storage.googleapis.com/minikube/releases/v#{version}/minikube-darwin-amd64"
  appcast 'https://github.com/kubernetes/minikube/releases.atom',
          checkpoint: '955ebaedbcc424fd4d8089f875c39184a3a2caf56a25d7ecf3baa3eedf29689e'
  name 'Minikube'
  homepage 'https://github.com/kubernetes/minikube'

  depends_on formula: 'kubernetes-cli'
  container type: :naked

  binary 'minikube-darwin-amd64', target: 'minikube'

  zap trash: '~/.minikube'
end
