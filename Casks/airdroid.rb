cask 'airdroid' do
  version '3.6.7.0'
  sha256 '2c35ec891a35e1d355a4f159f1dc6d5f2f4fc2d79664ffc332fc273b10d13409'

  # s3.amazonaws.com/dl.airdroid.com/ was verified as official when first introduced to the cask
  url "https://s3.amazonaws.com/dl.airdroid.com/AirDroid_Desktop_Client_#{version}.dmg"
  appcast 'https://macupdater.net/cgi-bin/check_urls/check_url_redirect.cgi?url=https://srv3.airdroid.com/p20/web/getbinaryredirect?type=dmg&channel=&version='
  name 'AirDroid'
  homepage 'https://www.airdroid.com/'

  app 'AirDroid.app'
end
