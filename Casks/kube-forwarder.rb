cask 'kube-forwarder' do
  version '1.4.0'
  sha256 '10df5ea1228341f692c6e0e48499e5f04596e0c7a3808f1fc7f0f5213257df56'

  # github.com/pixel-point/kube-forwarder was verified as official when first introduced to the cask
  url "https://github.com/pixel-point/kube-forwarder/releases/download/v#{version}/kube-forwarder.dmg"
  appcast 'https://github.com/pixel-point/kube-forwarder/releases.atom'
  name 'Kube Forwarder'
  homepage 'https://kube-forwarder.pixelpoint.io/'

  app 'Kube Forwarder.app'
end
