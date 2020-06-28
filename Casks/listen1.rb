cask 'listen1' do
  # note: "1" is not a version number, but an intrinsic part of the product name
  version '2.8.0'
  sha256 '6aa89b54ff4c1c357e046d98821b5e5ef50fb2cd10a99371a494f093aad59896'

  # github.com/listen1/listen1_desktop/ was verified as official when first introduced to the cask
  url "https://github.com/listen1/listen1_desktop/releases/download/v#{version}/Listen1_#{version}_mac.dmg"
  appcast 'https://github.com/listen1/listen1_desktop/releases.atom'
  name 'Listen 1'
  homepage 'https://listen1.github.io/listen1/'

  app 'Listen1.app'
end
