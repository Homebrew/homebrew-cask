cask 'iringg' do
  version '1.0.44'
  sha256 'aae95d6a86d4f4bbe10f67cee0f9f6f1567c4b936197b6d6451fef006d29e1b2'

  url "https://shining.softorino.com/shine_uploads/iringgmac_#{version}.dmg"
  appcast 'https://macupdater.net/cgi-bin/check_urls/check_url_redirect.cgi?url=https://shining.softorino.com/download.php?abbr=irgm'
  name 'iRingg'
  homepage 'https://softorino.com/iringg/'

  auto_updates true

  app 'iRingg.app'

  zap trash: '~/Library/Application Support/iRingg'
end
