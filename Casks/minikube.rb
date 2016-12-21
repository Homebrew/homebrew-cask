cask 'minikube' do
  version '0.14.0'
  sha256 '950805a1e1929dc41ef27698a0325b981f99f4a45df121521861fcd696e35f28'

  url "https://github.com/kubernetes/minikube/releases/download/v#{version}/minikube-darwin-amd64"
  appcast 'https://github.com/kubernetes/minikube/releases.atom',
          checkpoint: '075362e43b0ce4d3262a1e2e4583c3916dac0851239d66283e91daddd4c23fa8'
  name 'Minikube'
  homepage 'https://github.com/kubernetes/minikube'

  container type: :naked

  binary 'minikube-darwin-amd64', target: 'minikube'

  postflight do
    set_permissions "#{staged_path}/minikube-darwin-amd64", '0755'
  end
end
