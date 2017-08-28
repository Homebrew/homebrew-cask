cask 'nagbar' do
  version '1.3.0'
  sha256 '103206a5c6809af748b7cdcd02611e00c4b9bd123bf1dc1668354de2b7a7bbbf'

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
