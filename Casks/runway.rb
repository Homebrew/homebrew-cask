cask 'runway' do
  version '0.13.6'
  sha256 'a3f3c31a761e67dfb28e78203bb1aa4b13764d712b5af8e9788c9740a652aa17'

  # runway-releases.s3.amazonaws.com/ was verified as official when first introduced to the cask
  url "https://runway-releases.s3.amazonaws.com/Runway-#{version}.dmg"
  appcast 'https://runway-releases.s3.amazonaws.com/latest-mac.yml'
  name 'Runway'
  homepage 'https://runwayml.com/'

  app 'Runway.app'
end
