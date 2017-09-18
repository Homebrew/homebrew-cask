cask 'minikube' do
  version '0.22.2'
  sha256 'd59ca57fece491fee8b47a5c092ac297e807ca47584ac2b65078d070ed5d3f48'

  # storage.googleapis.com/minikube was verified as official when first introduced to the cask
  url "https://storage.googleapis.com/minikube/releases/v#{version}/minikube-darwin-amd64"
  appcast 'https://github.com/kubernetes/minikube/releases.atom',
          checkpoint: 'd0975b86bbb7c2d8751a2d85020cee1f268730a56cc0092f9325b60ace22f69e'
  name 'Minikube'
  homepage 'https://github.com/kubernetes/minikube'

  depends_on formula: 'kubernetes-cli'
  container type: :naked

  binary 'minikube-darwin-amd64', target: 'minikube'

  zap delete: '~/.minikube'
end
