cask 'minikube' do
  version '0.22.1'
  sha256 'a5bf0deacfce70a7f19f5955da14bb02871fee724185f76ad95657a5f35d96ce'

  # storage.googleapis.com/minikube was verified as official when first introduced to the cask
  url "https://storage.googleapis.com/minikube/releases/v#{version}/minikube-darwin-amd64"
  appcast 'https://github.com/kubernetes/minikube/releases.atom',
          checkpoint: 'c77ffda101a7ccb89914aa3535a3cf30d7da718be65a99de163eacdbb34fef44'
  name 'Minikube'
  homepage 'https://github.com/kubernetes/minikube'

  depends_on formula: 'kubernetes-cli'
  container type: :naked

  binary 'minikube-darwin-amd64', target: 'minikube'

  zap delete: '~/.minikube'
end
