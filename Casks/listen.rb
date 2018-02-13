cask 'listen' do
  version '1.2.2'
  sha256 '5f420bb15062ef77b0e3d7f57b729957acedff5d66f23945f941c293a324aa1b'

  # github.com/listen1/listen1_desktop was verified as official when first introduced to the cask
  url 'https://github.com/listen1/listen1_desktop/releases/download/v1.2.2/listen1_mac_v122.dmg'
  name 'Listen 1'
  homepage 'https://listen1.github.io/listen1/'

  app 'Listen1.app'
end
