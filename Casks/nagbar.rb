cask 'nagbar' do
  version '1.2.5'
  sha256 '9d98fc193dfdc73621e40b15bf49abf15711b05e41835abe0469d9da10017037'

  url "https://sites.google.com/site/nagbarapp/NagBar-#{version}.dmg?attredirects=0&d=1"
  name 'NagBar'
  homepage 'https://sites.google.com/site/nagbarapp/home'

  app 'NagBar.app'

  zap delete: [
                '~/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/com.volendavidov.nagbar.sfl',
                '~/Caches/com.volendavidov.NagBar',
                '~/Preferences/com.volendavidov.NagBar.plist',
              ]
end
