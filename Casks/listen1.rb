cask 'listen1' do
  # note: "1" is not a version number, but an intrinsic part of the product name
  version '2.1.5'
  sha256 '860bbc0047d25ed175c1bfe40d7dba27211fda529f71fa4a34fcde90c2d2376b'

  # github.com/listen1/listen1_desktop was verified as official when first introduced to the cask
  url "https://github.com/listen1/listen1_desktop/releases/download/v#{version}/Listen1_#{version}_mac.dmg"
  appcast 'https://github.com/listen1/listen1_desktop/releases.atom'
  name 'Listen 1'
  homepage 'https://listen1.github.io/listen1/'

  app 'Listen1.app'
end
