cask 'sqlitestudio' do
  version '3.1.0'
  sha256 '73476703fa4a67f5588aca0d5b44ede7a9d7d4ccd261754bc8e73b5c1c4f5794'

  url "http://sqlitestudio.pl/files/sqlitestudio3/complete/macosx/sqlitestudio-#{version}.dmg"
  appcast 'http://sqlitestudio.pl/rss.rvt',
          checkpoint: '758d9f5ef56c89b6c28109c924cae4763ce9539f9f98bb2cbd58450e4bd7bb5f'
  name 'SQLiteStudio'
  homepage 'http://sqlitestudio.pl'

  app 'SQLiteStudio.app'

  zap delete: '~/Library/Saved Application State/com.yourcompany.SQLiteStudio.savedState',
      trash:  '~/.config/sqlitestudio'
end
