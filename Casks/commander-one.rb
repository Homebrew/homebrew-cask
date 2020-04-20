cask 'commander-one' do
  version '2.4.2'
  sha256 '969ff4d2c1679f6c18f7e38848400b27f165c4cd7d6ff0c5a2b40378b53a7e7e'

  # cdn.electronic.us/ was verified as official when first introduced to the cask
  url 'https://cdn.electronic.us/products/commander/mac/download/commander.dmg'
  appcast 'https://cdn.electronic.us/products/commander/mac/update/settings.xml'
  name 'Commander One'
  homepage 'https://mac.eltima.com/file-manager.html'

  depends_on macos: '>= :yosemite'

  app 'Commander One.app'
end
