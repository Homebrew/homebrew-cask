cask 'airdroid' do
  version '3.6.6.0'
  sha256 '15474fb7888371df018803c35ce84586ec6bd628293693d0e61e85fa0f97c23b'

  # s3.amazonaws.com/dl.airdroid.com was verified as official when first introduced to the cask
  url "https://s3.amazonaws.com/dl.airdroid.com/AirDroid_Desktop_Client_#{version}.dmg"
  appcast 'https://macupdater.net/cgi-bin/check_urls/check_url_redirect.cgi?url=https://srv3.airdroid.com/p20/web/getbinaryredirect?type=dmg&channel=&version='
  name 'AirDroid'
  homepage 'https://www.airdroid.com/'

  app 'AirDroid.app'
end
