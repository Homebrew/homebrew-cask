cask :v1 => 'nagbar' do
  version '1.2.4'
  sha256 '7375252d44afc2735327b6c430739a60cfb72f3464bd8bd25ace696e5152083c'

  url "https://sites.google.com/site/nagbarapp/NagBar-#{version}.dmg?attredirects=0&d=1"
  name 'NagBar'
  homepage 'https://sites.google.com/site/nagbarapp/home'
  license :gratis

  app 'NagBar.app'

  zap :delete => [
        '~/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/com.volendavidov.nagbar.sfl',
        '~/Caches/com.volendavidov.NagBar',
        '~/Preferences/com.volendavidov.NagBar.plist',
      ]
end
