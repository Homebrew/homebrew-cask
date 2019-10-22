cask 'airdroid' do
  version '3.6.5.0'
  sha256 '497d16cf895ca81beb745dddc07e1a225d72d2e9631192aadf11db069d026478'

  # s3.amazonaws.com/dl.airdroid.com was verified as official when first introduced to the cask
  url "https://s3.amazonaws.com/dl.airdroid.com/AirDroid_Desktop_Client_#{version}.dmg"
  appcast 'https://macupdater.net/cgi-bin/check_urls/check_url_redirect.cgi?url=https://srv3.airdroid.com/p20/web/getbinaryredirect?type=dmg&channel=&version='
  name 'AirDroid'
  homepage 'https://www.airdroid.com/'

  app 'AirDroid.app'
end
