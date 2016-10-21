cask 'helm' do
  version '2.0.0-beta.1'
  sha256 '26a9aa7d04afed6f2fe71481bc6b66b7aab48e659e5ebd85682c138a29cef83e'

  # storage.googleapis.com/kubernetes-helm/ was verified as official when first introduced to the cask
  url "http://storage.googleapis.com/kubernetes-helm/helm-v#{version}-darwin-amd64.tar.gz"
  appcast 'https://github.com/kubernetes/helm/releases.atom',
          checkpoint: '2e716c3cd2469e7284be892bba510a77a5e3c8f83041f16aeef5a61a5369ad9c'
  name 'Helm'
  homepage 'https://github.com/kubernetes/helm'

  binary 'darwin-amd64/helm'
end
