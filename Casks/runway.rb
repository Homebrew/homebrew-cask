cask 'runway' do
  version '0.9.22'
  sha256 'ad92bebfac1d66c9f303a36158ecde98012a0b815eaf8d5b84f6fbc88cf19fc5'

  # runway-releases.s3.amazonaws.com was verified as official when first introduced to the cask
  url "https://runway-releases.s3.amazonaws.com/Runway-#{version}.dmg"
  appcast 'https://macupdater.net/cgi-bin/check_urls/check_url_redirect.cgi?url=https://api.runwayml.com/v1/download?platform=mac'
  name 'Runway'
  homepage 'https://runwayml.com/'

  app 'Runway.app'
end
