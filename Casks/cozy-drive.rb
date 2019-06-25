cask 'cozy-drive' do
  version '3.13.4'
  sha256 'febbe1fa000c5be70b4ec4a72520906e242ab5afe778d89d46ec988d6eaa6790'

  # nuts.cozycloud.cc was verified as official when first introduced to the cask
  url "https://nuts.cozycloud.cc/download/channel/stable/CozyDrive-#{version}.dmg"
  appcast 'https://macupdater.net/cgi-bin/check_urls/check_url_filename.cgi?url=https://nuts.cozycloud.cc/download/channel/stable/osx'
  name 'Cozy Drive'
  homepage 'https://cozy.io/'

  app 'Cozy Drive.app'
end
