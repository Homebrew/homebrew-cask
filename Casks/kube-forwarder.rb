cask 'kube-forwarder' do
  version '1.5.0'
  sha256 'c6aeb2bd94dce460f08e517b8236332c563d67b8e186cbf4dc1b8acfda2b744a'

  # github.com/pixel-point/kube-forwarder was verified as official when first introduced to the cask
  url "https://github.com/pixel-point/kube-forwarder/releases/download/v#{version}/kube-forwarder.dmg"
  appcast 'https://github.com/pixel-point/kube-forwarder/releases.atom'
  name 'Kube Forwarder'
  homepage 'https://kube-forwarder.pixelpoint.io/'

  app 'Kube Forwarder.app'
end
