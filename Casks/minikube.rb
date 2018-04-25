cask 'minikube' do
  version '0.26.1'
  sha256 '8cabcaa244a7d62697ad8f4393e3661c9e9cd598a75df79a8d1ffe803f80b209'

  # storage.googleapis.com/minikube was verified as official when first introduced to the cask
  url "https://storage.googleapis.com/minikube/releases/v#{version}/minikube-darwin-amd64"
  appcast 'https://github.com/kubernetes/minikube/releases.atom',
          checkpoint: 'a01f4a55a8a321f1fd67c79b9293c6d8bbc0a37f28eb3315a3ebf5f6aad5427c'
  name 'Minikube'
  homepage 'https://github.com/kubernetes/minikube'

  depends_on formula: 'kubernetes-cli'
  container type: :naked

  binary 'minikube-darwin-amd64', target: 'minikube'

  zap trash: '~/.minikube'
end
