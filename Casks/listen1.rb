cask 'listen1' do
  # note: "1" is not a version number, but an intrinsic part of the product name
  version '2.7.2'
  sha256 'b64cae4a4ae91292d18167418e2edf7ec663c08481ba601852911f3c5a1de6fc'

  # github.com/listen1/listen1_desktop/ was verified as official when first introduced to the cask
  url "https://github.com/listen1/listen1_desktop/releases/download/v#{version}/Listen1_#{version}_mac.dmg"
  appcast 'https://github.com/listen1/listen1_desktop/releases.atom'
  name 'Listen 1'
  homepage 'https://listen1.github.io/listen1/'

  app 'Listen1.app'
end
