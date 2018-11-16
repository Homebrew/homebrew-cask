cask 'moom' do
  version '3.2.13'
  sha256 '040fbe28d232e7bb2f4ea970f1a3e3a1293902a2f7d30412f68758af30d0c7f1'

  url "https://manytricks.com/download/_do_not_hotlink_/moom#{version.no_dots}.dmg"
  appcast 'https://manytricks.com/moom/appcast'
  name 'Moom'
  homepage 'https://manytricks.com/moom/'

  auto_updates true

  app 'Moom.app'

  zap trash: [
               '~/Library/Preferences/com.manytricks.Moom.plist',
               '~/Library/Application Support/Many Tricks',
             ]
end
