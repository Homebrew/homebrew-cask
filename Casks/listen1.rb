cask 'listen1' do
  # note: "1" is not a version number, but an intrinsic part of the product name
  version '2.1.2'
  sha256 '1f793b424df56651b731328439d9df4caafb95d7aa4aee984b023ed2cef69c2b'

  # github.com/listen1/listen1_desktop was verified as official when first introduced to the cask
  url "https://github.com/listen1/listen1_desktop/releases/download/v#{version}/Listen1_#{version}_mac.dmg"
  appcast 'https://github.com/listen1/listen1_desktop/releases.atom'
  name 'Listen 1'
  homepage 'https://listen1.github.io/listen1/'

  app 'Listen1.app'
end
