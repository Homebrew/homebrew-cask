cask 'helm' do
  version '2.0.0-beta.2'
  sha256 '0121ec7d7bf077c718cacf79d201a9d9e5c3b3e4ebecd907b41d5d383acc0aad'

  # storage.googleapis.com/kubernetes-helm/ was verified as official when first introduced to the cask
  url "http://storage.googleapis.com/kubernetes-helm/helm-v#{version}-darwin-amd64.tar.gz"
  appcast 'https://github.com/kubernetes/helm/releases.atom',
          checkpoint: '1023bb1751f001a0696921a30043b33733eed9ee6173f613a7fc944d545e6f5d'
  name 'Helm'
  homepage 'https://github.com/kubernetes/helm'

  binary 'darwin-amd64/helm'
end
