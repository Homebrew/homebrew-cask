cask 'minikube' do
  version '0.17.0'
  sha256 'd12fb4f8d9ff538c5563e1dcdf29495dc47b64a3fe108d7190fa37bf94a09a21'

  # storage.googleapis.com/minikube was verified as official when first introduced to the cask
  url "https://storage.googleapis.com/minikube/releases/v#{version}/minikube-darwin-amd64"
  appcast 'https://github.com/kubernetes/minikube/releases.atom',
          checkpoint: '30e9116a67824c129b5a28a458d8b2e57c01dbfb0912f8784d9d8c0d6712a250'
  name 'Minikube'
  homepage 'https://github.com/kubernetes/minikube'

  container type: :naked

  binary 'minikube-darwin-amd64', target: 'minikube'

  postflight do
    set_permissions "#{staged_path}/minikube-darwin-amd64", '0755'
  end

  zap delete: '~/.minikube'
end
