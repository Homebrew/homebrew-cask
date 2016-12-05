cask 'minikube' do
  version '0.13.0'
  sha256 'bf04827735c1f8b7dd51548fbd01ef3a2f84a2db64b235a794020241c3ccf996'

  url "https://github.com/kubernetes/minikube/releases/download/v#{version}/minikube-darwin-amd64"
  appcast 'https://github.com/kubernetes/minikube/releases.atom',
          checkpoint: '6ade3c771645ac4de96a5ed4151db31e283720fa532e34701a861de7d21498fd'
  name 'Minikube'
  homepage 'https://github.com/kubernetes/minikube'

  depends_on arch: :x86_64
  container type: :naked

  binary 'minikube-darwin-amd64', target: 'minikube'

  postflight do
    set_permissions "#{staged_path}/minikube-darwin-amd64", '0755'
  end
end
