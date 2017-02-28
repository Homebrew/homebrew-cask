cask 'minikube' do
  version '0.16.0'
  sha256 '1de0dda591d23c01aa52f6e7b6c85bec7e4811a007a5a939eb2d1bed6fa84144'

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
