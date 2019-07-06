cask 'kube-forwarder' do
  version '1.2.0'
  sha256 '4951a5f7afcd14172a7ad66c50bb636e7a83ac67d76f2a39e59dae8df9f20459'

  # github.com/pixel-point/kube-forwarder was verified as official when first introduced to the cask
  url "https://github.com/pixel-point/kube-forwarder/releases/download/v#{version}/kube-forwarder.dmg"
  appcast 'https://github.com/pixel-point/kube-forwarder/releases.atom'
  name 'Kube Forwarder'
  homepage 'https://kube-forwarder.pixelpoint.io/'

  app 'Kube Forwarder.app'
end
