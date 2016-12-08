cask 'helm' do
  version '2.0.2'
  sha256 'd27bd7e40e12c0a5f08782a8a883166008565b28e0b82126d2089300ff3f8465'

  # storage.googleapis.com/kubernetes-helm/ was verified as official when first introduced to the cask
  url "http://storage.googleapis.com/kubernetes-helm/helm-v#{version}-darwin-amd64.tar.gz"
  appcast 'https://github.com/kubernetes/helm/releases.atom',
          checkpoint: '08098089f3eaeadb985f5431192df39b15a5017e83d2a844c48da64ca60ed135'
  name 'Helm'
  homepage 'https://github.com/kubernetes/helm'

  binary 'darwin-amd64/helm'
end
