cask 'listen1' do
  # note: "1" is not a version number, but an intrinsic part of the product name
  version '2.9.0'
  sha256 '55c35f537966fd3d1aff7f6fb4fc34a0de052adb72fb21688248ed0f3c1adfb8'

  # github.com/listen1/listen1_desktop/ was verified as official when first introduced to the cask
  url "https://github.com/listen1/listen1_desktop/releases/download/v#{version}/Listen1_#{version}_mac.dmg"
  appcast 'https://github.com/listen1/listen1_desktop/releases.atom'
  name 'Listen 1'
  homepage 'https://listen1.github.io/listen1/'

  app 'Listen1.app'
end
