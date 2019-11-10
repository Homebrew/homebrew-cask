cask 'runway' do
  version '0.9.21'
  sha256 'e6c1348d0105f49d91f89b883c8bfef8bd0e532aa3038a498089153000afd8e3'

  # runway-releases.s3.amazonaws.com was verified as official when first introduced to the cask
  url "https://runway-releases.s3.amazonaws.com/Runway-#{version}.dmg"
  appcast 'https://macupdater.net/cgi-bin/check_urls/check_url_redirect.cgi?url=https://api.runwayml.com/v1/download?platform=mac'
  name 'Runway'
  homepage 'https://runwayml.com/'

  app 'Runway.app'
end
