cask 'listen1' do
  # note: "1" is not a version number, but an intrinsic part of the product name
  version '2.4.0'
  sha256 '6d33cf6ba0ae9a48ccb666905fb0edda9eecc345ece607eb299503a0ba95ebfe'

  # github.com/listen1/listen1_desktop was verified as official when first introduced to the cask
  url "https://github.com/listen1/listen1_desktop/releases/download/v#{version}/Listen1_#{version}_mac.dmg"
  appcast 'https://github.com/listen1/listen1_desktop/releases.atom'
  name 'Listen 1'
  homepage 'https://listen1.github.io/listen1/'

  app 'Listen1.app'
end
