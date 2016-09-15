cask 'minikube' do
  version '0.10.0'
  sha256 'fc7552b5475d0c20ad96057fb88d686e226d09bd1034269d5078b33ba7d7cc8e'

  url "https://github.com/kubernetes/minikube/releases/download/v#{version}/minikube-darwin-amd64"
  appcast 'https://github.com/kubernetes/minikube/releases.atom',
          checkpoint: '08946ec7fd098d03263731ae186ed80c1685436f6fd14f868ef34c709c7cdab2'
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
