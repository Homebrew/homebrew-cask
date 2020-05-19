cask 'cozy-drive' do
  version '3.20.0'
  sha256 '81fa6226774a6836ed3673bf0de6843f7c43ed3bdf0cc7e19f12f5ad44f70ad6'

  # nuts.cozycloud.cc/ was verified as official when first introduced to the cask
  url "https://nuts.cozycloud.cc/download/channel/stable/CozyDrive-#{version}.dmg"
  appcast 'https://macupdater.net/cgi-bin/check_urls/check_url_filename.cgi?url=https://nuts.cozycloud.cc/download/channel/stable/osx'
  name 'Cozy Drive'
  homepage 'https://cozy.io/'

  app 'Cozy Drive.app'
end
