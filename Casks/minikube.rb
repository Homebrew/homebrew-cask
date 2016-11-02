cask 'minikube' do
  version '0.12.2'
  sha256 '5f818be5235d606ec5241ac1eea0dc92e6328d56841617c51e4595a0abc4300c'

  url "https://github.com/kubernetes/minikube/releases/download/v#{version}/minikube-darwin-amd64"
  appcast 'https://github.com/kubernetes/minikube/releases.atom',
          checkpoint: 'c7afe3f8144af79a5e76615a6ac526196b1080bc62367d8e58481c4aefdd2e62'
  name 'Minikube'
  homepage 'https://github.com/kubernetes/minikube'

  depends_on arch: :x86_64
  container type: :naked

  binary 'minikube-darwin-amd64', target: 'minikube'

  postflight do
    set_permissions "#{staged_path}/minikube-darwin-amd64", '0755'
  end
end
