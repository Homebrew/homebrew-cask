cask 'cozy-drive' do
  version '3.16.2'
  sha256 'd47e79982f53f29fd8664791e27a5cb134954c864ecb4e3cbfb69021b08d393e'

  # nuts.cozycloud.cc was verified as official when first introduced to the cask
  url "https://nuts.cozycloud.cc/download/channel/stable/CozyDrive-#{version}.dmg"
  appcast 'https://macupdater.net/cgi-bin/check_urls/check_url_filename.cgi?url=https://nuts.cozycloud.cc/download/channel/stable/osx'
  name 'Cozy Drive'
  homepage 'https://cozy.io/'

  app 'Cozy Drive.app'
end
