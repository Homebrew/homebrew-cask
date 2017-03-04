cask 'minikube' do
  version '0.17.1'
  sha256 'b175c355d377a6ce2fefdd19201c865a7e628581261ac949fffb725af459c389'

  # storage.googleapis.com/minikube was verified as official when first introduced to the cask
  url "https://storage.googleapis.com/minikube/releases/v#{version}/minikube-darwin-amd64"
  appcast 'https://github.com/kubernetes/minikube/releases.atom',
          checkpoint: '2233a695bbaff62293aa19dfad7b5da61008aeca929809cd25648f0726ea83b4'
  name 'Minikube'
  homepage 'https://github.com/kubernetes/minikube'

  container type: :naked

  binary 'minikube-darwin-amd64', target: 'minikube'

  postflight do
    set_permissions "#{staged_path}/minikube-darwin-amd64", '0755'
  end

  zap delete: '~/.minikube'
end
