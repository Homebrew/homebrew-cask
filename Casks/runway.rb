cask 'runway' do
  version '0.9.4'
  sha256 '24c4e0ee3b0fe14b81bd47137d6dfcdcdb38f394bfd6e16f3e35c7c4eb2f9a97'

  # runway-releases.s3.amazonaws.com was verified as official when first introduced to the cask
  url "https://runway-releases.s3.amazonaws.com/Runway-#{version}.dmg"
  appcast 'https://macupdater.net/cgi-bin/check_urls/check_url_redirect.cgi?url=https://api.runwayml.com/v1/download?platform=mac'
  name 'Runway'
  homepage 'https://runwayml.com/'

  app 'Runway.app'
end
