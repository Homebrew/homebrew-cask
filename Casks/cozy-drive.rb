cask 'cozy-drive' do
  version '3.21.0'
  sha256 'd5c9dca311770b7570a2f1bd88c5e82cb8d5767a3d9f4f4bfef2d7049713ccb3'

  # nuts.cozycloud.cc/ was verified as official when first introduced to the cask
  url "https://nuts.cozycloud.cc/download/channel/stable/CozyDrive-#{version}.dmg"
  appcast 'https://macupdater.net/cgi-bin/check_urls/check_url_filename.cgi?url=https://nuts.cozycloud.cc/download/channel/stable/osx'
  name 'Cozy Drive'
  homepage 'https://cozy.io/'

  app 'Cozy Drive.app'
end
