cask 'moom' do
  version '3.2.15'
  sha256 '2f40598c0cbe4bc48d185dfdd9891f25188462c66838a41905980a73f35398d4'

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
