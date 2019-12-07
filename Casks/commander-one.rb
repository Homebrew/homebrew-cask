cask 'commander-one' do
  version '2.4'
  sha256 'dbb9c82ef5c471577ca1ae80cc175b2df43ce01a85c0d68fc2b9af80f9959a42'

  # cdn.electronic.us was verified as official when first introduced to the cask
  url 'https://cdn.electronic.us/products/commander/mac/download/commander.dmg'
  appcast 'https://cdn.electronic.us/products/commander/mac/update/settings.xml'
  name 'Commander One'
  homepage 'https://mac.eltima.com/file-manager.html'

  depends_on macos: '>= :yosemite'

  app 'Commander One.app'
end
