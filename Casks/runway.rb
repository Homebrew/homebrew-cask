cask 'runway' do
  version '0.13.4'
  sha256 'f0cccfa4d299142ff19a427bc67f75551c810a2c70b32f5983100eb589d3d33f'

  # runway-releases.s3.amazonaws.com/ was verified as official when first introduced to the cask
  url "https://runway-releases.s3.amazonaws.com/Runway-#{version}.dmg"
  appcast 'https://runway-releases.s3.amazonaws.com/latest-mac.yml'
  name 'Runway'
  homepage 'https://runwayml.com/'

  app 'Runway.app'
end
