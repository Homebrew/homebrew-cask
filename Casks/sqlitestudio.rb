cask 'sqlitestudio' do
  version '3.0.7'
  sha256 '9f93d31dfcb6746fb613aed31920b14e34932ae0055c811e74b1aa01ef060a7c'

  url "http://sqlitestudio.pl/files/sqlitestudio3/complete/macosx/sqlitestudio-#{version}.dmg"
  appcast 'http://sqlitestudio.pl/rss.rvt',
          checkpoint: '63b2d8a5a549703a785c4df869d95cf44e35d8ed6af404721ecc62c23d09b932'
  name 'SQLiteStudio'
  homepage 'http://sqlitestudio.pl'
  license :gpl

  app 'SQLiteStudio.app'

  zap delete: '~/Library/Saved Application State/com.yourcompany.SQLiteStudio.savedState',
      trash:  '~/.config/sqlitestudio'
end
