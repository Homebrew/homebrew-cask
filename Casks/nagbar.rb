cask 'nagbar' do
  version '1.3.3'
  sha256 '51e5e4ac49e90c3a5609e29c4fb2a8b96a77d62e9e8d029156d0eb609a3bf041'

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
