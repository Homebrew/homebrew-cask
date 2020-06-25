cask 'runway' do
  version '0.13.3'
  sha256 'a45790f8042b8b624c5c5e6f0104a6b05525909d1736ab24915343a97331c233'

  # runway-releases.s3.amazonaws.com/ was verified as official when first introduced to the cask
  url "https://runway-releases.s3.amazonaws.com/Runway-#{version}.dmg"
  appcast 'https://runway-releases.s3.amazonaws.com/latest-mac.yml'
  name 'Runway'
  homepage 'https://runwayml.com/'

  app 'Runway.app'
end
