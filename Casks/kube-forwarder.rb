cask 'kube-forwarder' do
  version '1.3.2'
  sha256 '0fade97c8673cbdfda6d2943da9f74c0c8b6469e0b4a9e5f2133ccc79110e7c7'

  # github.com/pixel-point/kube-forwarder was verified as official when first introduced to the cask
  url "https://github.com/pixel-point/kube-forwarder/releases/download/v#{version}/kube-forwarder.dmg"
  appcast 'https://github.com/pixel-point/kube-forwarder/releases.atom'
  name 'Kube Forwarder'
  homepage 'https://kube-forwarder.pixelpoint.io/'

  app 'Kube Forwarder.app'
end
