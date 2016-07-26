cask 'minikube' do
  version '0.7.0'
  sha256 '67af90d31c02e26bdb5a1af96a67b00feb288f20f96b4a67f7c4f1a40b382e99'

  url "https://github.com/kubernetes/minikube/releases/download/v#{version}/minikube-darwin-amd64"
  appcast 'https://github.com/kubernetes/minikube/releases.atom',
          checkpoint: '8da4878cdfb90f5ef2f7de0ae9b5bb3070b855634b1733a370ccb9bd36da03f7'
  name 'Minikube'
  homepage 'https://github.com/kubernetes/minikube'
  license :apache

  depends_on arch: :x86_64
  container type: :naked

  binary 'minikube-darwin-amd64', target: 'minikube'

  postflight do
    set_permissions "#{staged_path}/minikube-darwin-amd64", '0755'
  end
end
