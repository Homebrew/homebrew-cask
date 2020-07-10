cask 'listen1' do
  # note: "1" is not a version number, but an intrinsic part of the product name
  version '2.10.0'
  sha256 'ba72e323a7ad41897a5625d8555b0a45160038ddd7546237bc498ad24da25ebc'

  # github.com/listen1/listen1_desktop/ was verified as official when first introduced to the cask
  url "https://github.com/listen1/listen1_desktop/releases/download/v#{version}/Listen1_#{version}_mac.dmg"
  appcast 'https://github.com/listen1/listen1_desktop/releases.atom'
  name 'Listen 1'
  homepage 'https://listen1.github.io/listen1/'

  app 'Listen1.app'
end
