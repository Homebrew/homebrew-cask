cask 'helm' do
  version '2.0.0-alpha.5'
  sha256 '62b45875666fda9cfc837d7861e5b6d7e36cd9ebd9b62652e6969bbdf01752da'

  # storage.googleapis.com/kubernetes-helm/ was verified as official when first introduced to the cask
  url "http://storage.googleapis.com/kubernetes-helm/helm-v#{version}-darwin-amd64.tar.gz"
  appcast 'https://github.com/kubernetes/helm/releases.atom',
          checkpoint: '89bc384e94e30b530e8afce2db165db31c3e18465077de889255d166a9110d44'
  name 'Helm'
  homepage 'https://github.com/kubernetes/helm'

  binary 'darwin-amd64/helm'
end
