cask 'runway' do
  version '0.12.1'
  sha256 '367ef8db8c32ad276df47a1de18c6957526b5c213d1878534451cd8e4fc96cf3'

  # runway-releases.s3.amazonaws.com/ was verified as official when first introduced to the cask
  url "https://runway-releases.s3.amazonaws.com/Runway-#{version}.dmg"
  appcast 'https://runway-releases.s3.amazonaws.com/latest-mac.yml'
  name 'Runway'
  homepage 'https://runwayml.com/'

  app 'Runway.app'
end
