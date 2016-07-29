cask 'minikube' do
  version '0.7.1'
  sha256 'fc8365148be19bd020432d8ddc85c06b7aab3953300b16b24f20fcd8393de449'

  url "https://github.com/kubernetes/minikube/releases/download/v#{version}/minikube-darwin-amd64"
  appcast 'https://github.com/kubernetes/minikube/releases.atom',
          checkpoint: '0bc485e67d85822e27770f13ab05f33a20c4d9bf2439af6cbd3aed8a3f0a052c'
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
