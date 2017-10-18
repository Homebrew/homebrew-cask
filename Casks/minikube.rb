cask 'minikube' do
  version '0.22.3'
  sha256 '62483f95b55fc14e6cd3898bbfdd637a0ad921e5f1a632b5e367d74af5e36f24'

  # storage.googleapis.com/minikube was verified as official when first introduced to the cask
  url "https://storage.googleapis.com/minikube/releases/v#{version}/minikube-darwin-amd64"
  appcast 'https://github.com/kubernetes/minikube/releases.atom',
          checkpoint: '9347dcfe2b9a91b4f091ea87f5e34ff8718dd689f1e3a96f0747d82d2c52471c'
  name 'Minikube'
  homepage 'https://github.com/kubernetes/minikube'

  depends_on formula: 'kubernetes-cli'
  container type: :naked

  binary 'minikube-darwin-amd64', target: 'minikube'

  zap delete: '~/.minikube'
end
