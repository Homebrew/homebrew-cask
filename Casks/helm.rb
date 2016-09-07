cask 'helm' do
  version '2.0.0-alpha.4'
  sha256 '4e504ca7b491609e1402bf583632516ce44fddfeadf02856b440ca5a6644eeb1'

  url "https://github.com/kubernetes/helm/releases/download/v#{version}/helm-v#{version}-darwin-amd64.tar.gz"
  appcast 'https://github.com/kubernetes/helm/releases.atom',
          checkpoint: 'bc0b7ead6b44231cb9312dbec9a147b3c202387cdfd828cee0546f1b986d623c'
  name 'Helm'
  homepage 'https://github.com/kubernetes/helm'
  license :apache

  binary 'darwin-amd64/helm'
  binary 'darwin-amd64/tiller'
end
