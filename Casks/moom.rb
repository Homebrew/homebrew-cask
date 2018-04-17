cask 'moom' do
  version '3.2.10'
  sha256 '89bd554f09a3c4b882b356429bf9eeb1115833e566b6a978285ed4a533edf668'

  url "https://manytricks.com/download/_do_not_hotlink_/moom#{version.no_dots}.dmg"
  appcast 'https://manytricks.com/moom/appcast',
          checkpoint: 'bb2f7418da94fe5f384332f58acf450d6dc2bf9ad86f689a7e4c9724f80641bd'
  name 'Moom'
  homepage 'https://manytricks.com/moom/'

  auto_updates true

  app 'Moom.app'

  zap trash: [
               '~/Library/Preferences/com.manytricks.Moom.plist',
               '~/Library/Application Support/Many Tricks',
             ]
end
