cask 'sqlitestudio' do
  version '3.0.7'
  sha256 '9f93d31dfcb6746fb613aed31920b14e34932ae0055c811e74b1aa01ef060a7c'

  url "http://sqlitestudio.pl/files/sqlitestudio3/complete/macosx/sqlitestudio-#{version}.dmg"
  name 'SQLiteStudio'
  homepage 'http://sqlitestudio.pl'
  license :gpl

  app 'SQLiteStudio.app'
end
