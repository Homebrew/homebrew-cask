cask 'moom' do
  version '3.2.8'
  sha256 '0e27b5e82491932bf0260e90d402eaa3051a67a735a1fb58710aa9cccf8b8022'

  url "https://manytricks.com/download/_do_not_hotlink_/moom#{version.no_dots}.dmg"
  appcast 'https://manytricks.com/moom/appcast',
          checkpoint: '3fb10946dd04dbbdeb31e1d18df7b6e3cbc301f90c1b59e3fae700aaf8bf7971'
  name 'Moom'
  homepage 'https://manytricks.com/moom/'

  auto_updates true

  app 'Moom.app'

  zap delete: [
                '~/Library/Preferences/com.manytricks.Moom.plist',
                '~/Library/Application Support/Many Tricks',
              ]
end
