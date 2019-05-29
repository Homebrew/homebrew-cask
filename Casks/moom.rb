cask 'moom' do
  version '3.2.14'
  sha256 'b0aeabb055faf5588ee2d04179545edecb489ad9cad4f125e79d2ad2d9471ba5'

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
