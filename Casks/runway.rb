cask 'runway' do
  version '0.9.7'
  sha256 'c2dd333e0e0189e7f8989736556c76e725eae0521dfc0809af012f35cd8c6560'

  # runway-releases.s3.amazonaws.com was verified as official when first introduced to the cask
  url "https://runway-releases.s3.amazonaws.com/Runway-#{version}.dmg"
  appcast 'https://macupdater.net/cgi-bin/check_urls/check_url_redirect.cgi?url=https://api.runwayml.com/v1/download?platform=mac'
  name 'Runway'
  homepage 'https://runwayml.com/'

  app 'Runway.app'
end
