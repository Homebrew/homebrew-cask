cask 'dcommander' do
  version '3700'
  sha256 '41c497e7d80b6667c4303a5e3e55ce3fb15c26d15817abaacbf867930e7ee178'

  url 'https://devstorm-apps.com/dc/download.php'
  appcast 'https://www.macupdater.net/cgi-bin/check_urls/check_url_filename.cgi?url=https://devstorm-apps.com/dc/download.php'
  name 'DCommander'
  homepage 'https://devstorm-apps.com/dc/'

  app 'DCommander.app'

  zap trash: '~/Library/Containers/com.devstorm.dc3'
end
