cask 'helm' do
  version '2.0.0-rc.2'
  sha256 'b9abef4328feb9ae287f2ae3cfdfff625e951b7788f055e04a07dd6b9bbe232a'

  # storage.googleapis.com/kubernetes-helm/ was verified as official when first introduced to the cask
  url "http://storage.googleapis.com/kubernetes-helm/helm-v#{version}-darwin-amd64.tar.gz"
  appcast 'https://github.com/kubernetes/helm/releases.atom',
          checkpoint: 'cb977ae4ce69f9e71cbdebffde11d19a488b423f1e56c70dc3654c333e5f753b'
  name 'Helm'
  homepage 'https://github.com/kubernetes/helm'

  binary 'darwin-amd64/helm'
end
