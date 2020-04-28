cask 'runway' do
  version '0.11.4'
  sha256 '7171f818d9711f38a1aa1f345c3d51ca68457d585a70931f4a25b9eda2b958e7'

  # runway-releases.s3.amazonaws.com/ was verified as official when first introduced to the cask
  url "https://runway-releases.s3.amazonaws.com/Runway-#{version}.dmg"
  appcast 'https://macupdater.net/cgi-bin/check_urls/check_url_redirect.cgi?url=https://api.runwayml.com/v1/download?platform=mac'
  name 'Runway'
  homepage 'https://runwayml.com/'

  app 'Runway.app'
end
