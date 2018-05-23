cask 'minikube' do
  version '0.27.0'
  sha256 'd335f7a6a03d7aead5cb95867ecdb96b845b3520593df16688e6dfac7d4717c1'

  # storage.googleapis.com/minikube was verified as official when first introduced to the cask
  url "https://storage.googleapis.com/minikube/releases/v#{version}/minikube-darwin-amd64"
  appcast 'https://github.com/kubernetes/minikube/releases.atom',
          checkpoint: '028278d641434c5f594414d5cbf1d9a16bcdbdb36bff70b2cc90773e30e3ad66'
  name 'Minikube'
  homepage 'https://github.com/kubernetes/minikube'

  depends_on formula: 'kubernetes-cli'
  container type: :naked

  binary 'minikube-darwin-amd64', target: 'minikube'

  zap trash: '~/.minikube'
end
