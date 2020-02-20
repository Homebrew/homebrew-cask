cask 'commander-one' do
  version '2.4.1'
  sha256 '0d8007f3afa10dfacb26c2fe177c38ae6076be5394baab555e705ed0f80c496b'

  # cdn.electronic.us was verified as official when first introduced to the cask
  url 'https://cdn.electronic.us/products/commander/mac/download/commander.dmg'
  appcast 'https://cdn.electronic.us/products/commander/mac/update/settings.xml'
  name 'Commander One'
  homepage 'https://mac.eltima.com/file-manager.html'

  depends_on macos: '>= :yosemite'

  app 'Commander One.app'
end
