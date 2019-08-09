cask 'kube-forwarder' do
  version '1.4.2'
  sha256 '2dd2d5bbb9da8656dc125a148f98a1dd2065cf8522baa341e86b64e7d234c5e0'

  # github.com/pixel-point/kube-forwarder was verified as official when first introduced to the cask
  url "https://github.com/pixel-point/kube-forwarder/releases/download/v#{version}/kube-forwarder.dmg"
  appcast 'https://github.com/pixel-point/kube-forwarder/releases.atom'
  name 'Kube Forwarder'
  homepage 'https://kube-forwarder.pixelpoint.io/'

  app 'Kube Forwarder.app'
end
