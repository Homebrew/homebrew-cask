cask 'kube-forwarder' do
  version '1.3.0'
  sha256 'aabb0997d1bfcf575b39538623362399eb19e82774bdbb42d16f75c8c0e800c5'

  # github.com/pixel-point/kube-forwarder was verified as official when first introduced to the cask
  url "https://github.com/pixel-point/kube-forwarder/releases/download/v#{version}/kube-forwarder.dmg"
  appcast 'https://github.com/pixel-point/kube-forwarder/releases.atom'
  name 'Kube Forwarder'
  homepage 'https://kube-forwarder.pixelpoint.io/'

  app 'Kube Forwarder.app'
end
