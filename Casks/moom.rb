cask 'moom' do
  version '3.2.12'
  sha256 '3ad4f410be9be95cb20c2e5e85d4563298c85e40c474ab2e73c9b9c9969d64f7'

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
