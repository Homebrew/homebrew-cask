cask 'runway' do
  version '0.9.10'
  sha256 '325b40c031c25e64856d2243b8a0d3008c0316a1f397f8de3b82a53529a28d02'

  # runway-releases.s3.amazonaws.com was verified as official when first introduced to the cask
  url "https://runway-releases.s3.amazonaws.com/Runway-#{version}.dmg"
  appcast 'https://macupdater.net/cgi-bin/check_urls/check_url_redirect.cgi?url=https://api.runwayml.com/v1/download?platform=mac'
  name 'Runway'
  homepage 'https://runwayml.com/'

  app 'Runway.app'
end
