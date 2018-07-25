cask 'sqlitestudio' do
  version '3.2.0'
  sha256 'cef6047a15bc6798d1a7cb4134233c9fd606e88761150f275a7b8dfc0d729b67'

  url "https://sqlitestudio.pl/files/sqlitestudio#{version.major}/complete/macosx-inst/InstallSQLiteStudio-#{version}.dmg"
  appcast 'http://sqlitestudio.pl/rss.rvt'
  name 'SQLiteStudio'
  homepage 'https://sqlitestudio.pl/'

  app "InstallSQLiteStudio-#{version}"

  zap trash: [
               '~/.config/sqlitestudio',
               '~/Library/Saved Application State/com.yourcompany.SQLiteStudio.savedState',
             ]
end
