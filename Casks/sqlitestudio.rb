cask 'sqlitestudio' do
  version '3.2.0'
  sha256 'b6aba68a3f79cdfa5e215c60d8b3454792bf9747418ce2399ca5bafdcbcf3137'

  url "https://sqlitestudio.pl/files/sqlitestudio#{version.major}/complete/macosx/SQLiteStudio-#{version}.dmg"
  appcast 'http://sqlitestudio.pl/rss.rvt'
  name 'SQLiteStudio'
  homepage 'https://sqlitestudio.pl/'

  app 'SQLiteStudio'

  zap trash: [
               '~/.config/sqlitestudio',
               '~/Library/Saved Application State/com.yourcompany.SQLiteStudio.savedState',
             ]
end
