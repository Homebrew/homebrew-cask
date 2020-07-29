cask 'dcommander' do
  version '3850'
  sha256 'a3020935eed07fd8ff84968d64b34f97a653e0e44101cd3d3029a9404662d2d9'

  url 'https://devstorm-apps.com/dc/download.php'
  appcast 'https://www.macupdater.net/cgi-bin/check_urls/check_url_filename.cgi?url=https://devstorm-apps.com/dc/download.php'
  name 'DCommander'
  homepage 'https://devstorm-apps.com/dc/'

  app 'DCommander.app'

  zap trash: '~/Library/Containers/com.devstorm.dc3'
end
