cask 'helm' do
  version '2.0.0-alpha.4'
  sha256 'fcba539993b7b1459a5c2e02c93e87c7f2fdb5fea941b4a0bc3367e58f85c47b'

  url "https://github.com/kubernetes/helm/releases/download/v#{version}/helm-v#{version}-darwin-amd64.tar.gz"
  appcast 'https://github.com/kubernetes/helm/releases.atom',
          checkpoint: 'bc0b7ead6b44231cb9312dbec9a147b3c202387cdfd828cee0546f1b986d623c'
  name 'Helm'
  homepage 'https://github.com/kubernetes/helm'

  binary 'darwin-amd64/helm'
end
