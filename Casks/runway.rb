cask 'runway' do
  version '0.10.22'
  sha256 '791549870c5bf81166c4ea0eb96e6ef903df65d6c7c8231cc14b934db2fde1ac'

  # runway-releases.s3.amazonaws.com was verified as official when first introduced to the cask
  url "https://runway-releases.s3.amazonaws.com/Runway-#{version}.dmg"
  appcast 'https://macupdater.net/cgi-bin/check_urls/check_url_redirect.cgi?url=https://api.runwayml.com/v1/download?platform=mac'
  name 'Runway'
  homepage 'https://runwayml.com/'

  app 'Runway.app'
end
