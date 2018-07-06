cask 'listen1' do
  # note: "1" is not a version number, but an intrinsic part of the product name
  version '1.8.0'
  sha256 '85f2044ecca3999331e8b96e1b317574dbd13c83c33aab6a9f48e2ec22d6a985'

  # github.com/listen1/listen1_desktop was verified as official when first introduced to the cask
  url "https://github.com/listen1/listen1_desktop/releases/download/v#{version}/Listen1_#{version}_mac.dmg"
  appcast 'https://github.com/listen1/listen1_desktop/releases.atom'
  name 'Listen 1'
  homepage 'https://listen1.github.io/listen1/'

  app 'Listen1.app'
end
