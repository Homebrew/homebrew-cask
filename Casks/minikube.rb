cask 'minikube' do
  version '0.6.0'
  sha256 'b901806e821598471e3493c787b88ee666ffa08d032053ec80954be9048e4ef2'

  url "https://github.com/kubernetes/minikube/releases/download/v#{version}/minikube-darwin-amd64"
  appcast 'https://github.com/kubernetes/minikube/releases.atom',
          checkpoint: '9be375b536da2eabf0b8b90fb93f3afaf5b75c8002b509dd5f5bcf585d65923f'
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
