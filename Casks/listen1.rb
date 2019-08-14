cask 'listen1' do
  # note: "1" is not a version number, but an intrinsic part of the product name
  version '2.5.0'
  sha256 'e58a20144bebcf9e6d3fb3bdf21cfea0c8250a409d1f752dc9961cd7f97a5d01'

  # github.com/listen1/listen1_desktop was verified as official when first introduced to the cask
  url "https://github.com/listen1/listen1_desktop/releases/download/v#{version}/Listen1_#{version}_mac.dmg"
  appcast 'https://github.com/listen1/listen1_desktop/releases.atom'
  name 'Listen 1'
  homepage 'https://listen1.github.io/listen1/'

  app 'Listen1.app'
end
