cask 'rancher-kubernetes-engine' do
  version '0.1.9'
  sha256 '78a2e1dc27113da5a534e9a7dab452f9f25a4bba2308386621354f808ba7384c'

  # github.com/rancher was verified as official when first introduced to the cask
  url "https://github.com/rancher/rke/releases/download/v#{version}/rke_darwin-amd64"
  appcast 'https://github.com/rancher/rke/releases.atom'
  name 'Rancher Kubernetes Engine'
  homepage 'https://rancher.com/docs/rke/v0.1.x/en/'

  # Renamed for consistency: official documentaiton uses `rke`.
  # Installation instructions: https://rancher.com/docs/rke/v0.1.x/en/installation/#download-the-rke-binary
  binary 'rke_darwin-amd64', target: 'rke'
end
