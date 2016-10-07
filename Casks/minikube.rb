cask 'minikube' do
  version '0.11.0'
  sha256 '7fe7ce35eda959d91071d065141d040053b945d5af0d57f98eb18afb93a4c921'

  url "https://github.com/kubernetes/minikube/releases/download/v#{version}/minikube-darwin-amd64"
  appcast 'https://github.com/kubernetes/minikube/releases.atom',
          checkpoint: 'c4b213e3bbe860bc61f88f4bf4c7b48588b0aa1d87583c248c66624683660a71'
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
