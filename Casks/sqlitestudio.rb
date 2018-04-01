cask 'sqlitestudio' do
  version '3.1.1'
  sha256 'eb678313e35ee85adc12b71a75bbdedaf86ab96b7fdeb2d360289c5d5491cb35'

  url "http://sqlitestudio.pl/files/sqlitestudio3/complete/macosx/sqlitestudio-#{version}.dmg"
  appcast 'http://sqlitestudio.pl/rss.rvt',
          checkpoint: '20c2c66590f5f58f06c1da7197e7b418856c1a56c1abc3ebd5f30410458e51c2'
  name 'SQLiteStudio'
  homepage 'https://sqlitestudio.pl/'

  app 'SQLiteStudio.app'

  zap trash: [
               '~/.config/sqlitestudio',
               '~/Library/Saved Application State/com.yourcompany.SQLiteStudio.savedState',
             ]
end
