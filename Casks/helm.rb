cask 'helm' do
  version '2.1.0'
  sha256 '1080267d1b4b7e0b5fe8dd192dcf8d83e817db396a3764d4be18d66e1434646c'

  # storage.googleapis.com/kubernetes-helm/ was verified as official when first introduced to the cask
  url "http://storage.googleapis.com/kubernetes-helm/helm-v#{version}-darwin-amd64.tar.gz"
  appcast 'https://github.com/kubernetes/helm/releases.atom',
          checkpoint: '7e053608498504e5aeb965a956f5d3d0934256c856fbbd608fcab72078837c40'
  name 'Helm'
  homepage 'https://github.com/kubernetes/helm'

  binary 'darwin-amd64/helm'
end
