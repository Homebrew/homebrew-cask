cask 'minikube' do
  version '1.0.0'
  sha256 '865bd3a13c1ad3b7732b2bea35b26fef150f2b3cbfc257c5d1835527d1b331e9'

  # storage.googleapis.com/minikube was verified as official when first introduced to the cask
  url "https://storage.googleapis.com/minikube/releases/v#{version}/minikube-darwin-amd64"
  appcast 'https://github.com/kubernetes/minikube/releases.atom'
  name 'minikube'
  homepage 'https://github.com/kubernetes/minikube'

  depends_on formula: 'kubernetes-cli'
  container type: :naked

  binary 'minikube-darwin-amd64', target: 'minikube'

  zap trash: '~/.minikube'
end
