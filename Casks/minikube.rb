cask 'minikube' do
  version '0.25.0'
  sha256 '0d85ecc1cd064bae04ea4a8ef634d4fdc80318b65a2b8d14d105f1e15fcbced0'

  # storage.googleapis.com/minikube was verified as official when first introduced to the cask
  url "https://storage.googleapis.com/minikube/releases/v#{version}/minikube-darwin-amd64"
  appcast 'https://github.com/kubernetes/minikube/releases.atom',
          checkpoint: 'b8788803f9a46137e5fed4dd40a123e1099c04916728bb9f01042228cf450978'
  name 'Minikube'
  homepage 'https://github.com/kubernetes/minikube'

  depends_on formula: 'kubernetes-cli'
  container type: :naked

  binary 'minikube-darwin-amd64', target: 'minikube'

  zap trash: '~/.minikube'
end
