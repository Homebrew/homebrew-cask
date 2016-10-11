cask 'helm' do
  version '2.0.0-alpha.5'
  sha256 '6bd540611042665c78923fd722e9cd25d08e7381e982535a3a720458da163811'

  # storage.googleapis.com/kubernetes-helm/ was verified as official when first introduced to the cask
  url "http://storage.googleapis.com/kubernetes-helm/helm-v#{version}-darwin-amd64.tar.gz"
  appcast 'https://github.com/kubernetes/helm/releases.atom',
          checkpoint: '89bc384e94e30b530e8afce2db165db31c3e18465077de889255d166a9110d44'
  name 'Helm'
  homepage 'https://github.com/kubernetes/helm'

  binary 'darwin-amd64/helm'
end
