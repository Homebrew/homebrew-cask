cask 'runway' do
  version '0.13.1'
  sha256 'd1f73dbadf408d20b4289590e3e18f6d9c23477b6aae75973e0af4c715e5f592'

  # runway-releases.s3.amazonaws.com/ was verified as official when first introduced to the cask
  url "https://runway-releases.s3.amazonaws.com/Runway-#{version}.dmg"
  appcast 'https://runway-releases.s3.amazonaws.com/latest-mac.yml'
  name 'Runway'
  homepage 'https://runwayml.com/'

  app 'Runway.app'
end
