cask 'nagbar' do
  version '1.3.2'
  sha256 '4df51d327d43a5a20f621abbd8f52542bb6efdc27b775f3dafb021d905864491'

  url "https://sites.google.com/site/nagbarapp/NagBar-#{version}.zip?attredirects=0&d=1"
  name 'NagBar'
  homepage 'https://sites.google.com/site/nagbarapp/home'

  app 'NagBar.app'

  zap delete: [
                '~/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/com.volendavidov.nagbar.sfl',
                '~/Caches/com.volendavidov.NagBar',
                '~/Preferences/com.volendavidov.NagBar.plist',
              ]
end
