cask 'cozy-drive' do
  version '3.14.0'
  sha256 '41b5ae3767370460bb9f27f2205790a26f5a4ca334f6f796ad5caeade545b77b'

  # nuts.cozycloud.cc was verified as official when first introduced to the cask
  url "https://nuts.cozycloud.cc/download/channel/stable/CozyDrive-#{version}.dmg"
  appcast 'https://macupdater.net/cgi-bin/check_urls/check_url_filename.cgi?url=https://nuts.cozycloud.cc/download/channel/stable/osx'
  name 'Cozy Drive'
  homepage 'https://cozy.io/'

  app 'Cozy Drive.app'
end
