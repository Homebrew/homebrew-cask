cask 'moom' do
  version '3.2.9'
  sha256 '1a96c4abad79a4cf06de4de30a0a4d86976664604984698514ff117ea102d3cd'

  url "https://manytricks.com/download/_do_not_hotlink_/moom#{version.no_dots}.dmg"
  appcast 'https://manytricks.com/moom/appcast',
          checkpoint: '046b3c0a362b17883b049f1eb91c69c6487a7e8ffe6e82256f2bc441c9072d76'
  name 'Moom'
  homepage 'https://manytricks.com/moom/'

  auto_updates true

  app 'Moom.app'

  zap delete: [
                '~/Library/Preferences/com.manytricks.Moom.plist',
                '~/Library/Application Support/Many Tricks',
              ]
end
