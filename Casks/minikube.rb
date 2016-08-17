cask 'minikube' do
  version '0.8.0'
  sha256 'cc7439fc8e8e8e957246908f99314abeeb8513745b8d30ed64bf480227ec2607'

  url "https://github.com/kubernetes/minikube/releases/download/v#{version}/minikube-darwin-amd64"
  appcast 'https://github.com/kubernetes/minikube/releases.atom',
          checkpoint: 'c3983a4c79dc813b12442932f7eb73544f9cd2403ddfd51e29ff8fe098c828d1'
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
