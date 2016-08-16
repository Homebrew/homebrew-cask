cask 'helm' do
  version '2.0.0-alpha.3'
  sha256 'dce339a1d418db57b884256f1f9cd01190345033ddea1c65a062b3d4bbbb1172'

  url "https://github.com/kubernetes/helm/releases/download/v#{version}/helm-v#{version}-darwin-amd64.tar"
  appcast 'https://github.com/kubernetes/helm/releases.atom',
          checkpoint: '5a928587b5595fdfd151e1725b1f7ea48ec2aa3ff154e47a4a26c96e481af949'
  name 'Helm'
  homepage 'https://github.com/kubernetes/helm'
  license :apache

  binary 'darwin-amd64/helm'
  binary 'darwin-amd64/tiller'
end
