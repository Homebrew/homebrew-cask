cask 'helm' do
  version '2.0.0'
  sha256 '1e654364fe7c2c28dd708ace0952c55e412af61621d0954cbe25e90df1180b3b'

  # storage.googleapis.com/kubernetes-helm/ was verified as official when first introduced to the cask
  url "http://storage.googleapis.com/kubernetes-helm/helm-v#{version}-darwin-amd64.tar.gz"
  appcast 'https://github.com/kubernetes/helm/releases.atom',
          checkpoint: 'a7d693afb88348128a4dc5644a31aa95062cb874b12064ea904caeb0142ce0a3'
  name 'Helm'
  homepage 'https://github.com/kubernetes/helm'

  binary 'darwin-amd64/helm'
end
