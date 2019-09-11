cask 'listen1' do
  # note: "1" is not a version number, but an intrinsic part of the product name
  version '2.5.1'
  sha256 '9d4e32ebfd9f3698d4d10cbdef13a5f6453cffabd7e20bfee47a7b0d49a88337'

  # github.com/listen1/listen1_desktop was verified as official when first introduced to the cask
  url "https://github.com/listen1/listen1_desktop/releases/download/v#{version}/Listen1_#{version}_mac.dmg"
  appcast 'https://github.com/listen1/listen1_desktop/releases.atom'
  name 'Listen 1'
  homepage 'https://listen1.github.io/listen1/'

  app 'Listen1.app'
end
