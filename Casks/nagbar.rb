cask 'nagbar' do
  version '1.3.1'
  sha256 '48e395a42d07c3433905b8d7382a19ebe8a3972c4e00c2d9cf165db637182ad3'

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
