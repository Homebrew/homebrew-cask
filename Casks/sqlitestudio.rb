cask 'sqlitestudio' do
  version '3.2.1'
  sha256 'b66ce10747ca734c7f0dacf19fc773936756db1ab5441ec29b9b5ba23308844c'

  url "https://sqlitestudio.pl/files/sqlitestudio#{version.major}/complete/macosx/SQLiteStudio-#{version}.dmg"
  appcast 'https://sqlitestudio.pl/rss.rvt'
  name 'SQLiteStudio'
  homepage 'https://sqlitestudio.pl/'

  auto_updates true

  app 'SQLiteStudio.app'

  zap trash: [
               '~/.config/sqlitestudio',
               '~/Library/Saved Application State/com.yourcompany.SQLiteStudio.savedState',
             ]
end
