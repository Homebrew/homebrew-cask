cask 'dcommander' do
  version '3800'
  sha256 'be273afe4e10f30ec0a7bc94c4f0a2b3b2f0f33d50b4987a98edafae4538246b'

  url 'https://devstorm-apps.com/dc/download.php'
  appcast 'https://www.macupdater.net/cgi-bin/check_urls/check_url_filename.cgi?url=https://devstorm-apps.com/dc/download.php'
  name 'DCommander'
  homepage 'https://devstorm-apps.com/dc/'

  app 'DCommander.app'

  zap trash: '~/Library/Containers/com.devstorm.dc3'
end
