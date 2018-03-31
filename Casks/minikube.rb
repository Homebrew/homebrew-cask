cask 'minikube' do
  version '0.25.2'
  sha256 'dc5b00c4a06e8160bd607732c9a2294598d803716e353293b4463cc2c9539eec'

  # storage.googleapis.com/minikube was verified as official when first introduced to the cask
  url "https://storage.googleapis.com/minikube/releases/v#{version}/minikube-darwin-amd64"
  appcast 'https://github.com/kubernetes/minikube/releases.atom',
          checkpoint: 'ce48a5c392fb7b35a106ae78ca225bc3c01e4afcb99d96957d3f8d0dcf55d910'
  name 'Minikube'
  homepage 'https://github.com/kubernetes/minikube'

  depends_on formula: 'kubernetes-cli'
  container type: :naked

  binary 'minikube-darwin-amd64', target: 'minikube'

  zap trash: '~/.minikube'
end
