cask 'listen1' do
  # note: "1" is not a version number, but an intrinsic part of the product name
  version '2.1.1'
  sha256 '1771953761544116a466cab6cb9250497b0d2f2d23f294e8ec78f330db668564'

  # github.com/listen1/listen1_desktop was verified as official when first introduced to the cask
  url "https://github.com/listen1/listen1_desktop/releases/download/v#{version}/Listen1_#{version}_mac.dmg"
  appcast 'https://github.com/listen1/listen1_desktop/releases.atom'
  name 'Listen 1'
  homepage 'https://listen1.github.io/listen1/'

  app 'Listen1.app'
end
