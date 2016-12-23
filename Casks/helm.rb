cask 'helm' do
  version '2.1.2'
  sha256 '2b522dcfe27e987138f7826c79fb26a187075dd9be5c5a4c76fd6846bf109014'

  # storage.googleapis.com/kubernetes-helm/ was verified as official when first introduced to the cask
  url "http://storage.googleapis.com/kubernetes-helm/helm-v#{version}-darwin-amd64.tar.gz"
  appcast 'https://github.com/kubernetes/helm/releases.atom',
          checkpoint: '894e3439c7fa23614115010d85529f1bae5156a7caaf86120bf387155a5b93a3'
  name 'Helm'
  homepage 'https://github.com/kubernetes/helm'

  binary 'darwin-amd64/helm'
end
