cask 'runway' do
  version '0.12.6'
  sha256 '3b7e05fcfb25d63de2428e44a1f9f1a9c4fc8549434758d1775b11e5621738a0'

  # runway-releases.s3.amazonaws.com/ was verified as official when first introduced to the cask
  url "https://runway-releases.s3.amazonaws.com/Runway-#{version}.dmg"
  appcast 'https://runway-releases.s3.amazonaws.com/latest-mac.yml'
  name 'Runway'
  homepage 'https://runwayml.com/'

  app 'Runway.app'
end
