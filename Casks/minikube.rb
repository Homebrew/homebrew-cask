cask 'minikube' do
  version '0.9.0'
  sha256 '4415e7f3a30ace7cf0e5ad023f979509e6b25ded1bfb55368f918fc25098307e'

  url "https://github.com/kubernetes/minikube/releases/download/v#{version}/minikube-darwin-amd64"
  appcast 'https://github.com/kubernetes/minikube/releases.atom',
          checkpoint: '35fb722d1fe01506622e37872612f220fb43fd7d3d6c1361c4f475fec9ba86fc'
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
