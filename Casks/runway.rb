cask 'runway' do
  version '0.12.4'
  sha256 '7e31df0e8e37cfeb411551d583a6a03926f143e4e0886e8be83f37aba0f72fd1'

  # runway-releases.s3.amazonaws.com/ was verified as official when first introduced to the cask
  url "https://runway-releases.s3.amazonaws.com/Runway-#{version}.dmg"
  appcast 'https://runway-releases.s3.amazonaws.com/latest-mac.yml'
  name 'Runway'
  homepage 'https://runwayml.com/'

  app 'Runway.app'
end
