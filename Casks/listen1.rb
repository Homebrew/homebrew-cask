cask 'listen1' do
  # note: "1" is not a version number, but an intrinsic part of the product name
  version '2.3.1'
  sha256 '25be33d799cecd6068ee0126cd857388097400fe5bdbb6d1687dedf43486b1c7'

  # github.com/listen1/listen1_desktop was verified as official when first introduced to the cask
  url "https://github.com/listen1/listen1_desktop/releases/download/v#{version}/Listen1_#{version}_mac.dmg"
  appcast 'https://github.com/listen1/listen1_desktop/releases.atom'
  name 'Listen 1'
  homepage 'https://listen1.github.io/listen1/'

  app 'Listen1.app'
end
