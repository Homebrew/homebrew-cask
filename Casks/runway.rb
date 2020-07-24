cask 'runway' do
  version '0.13.7'
  sha256 '6f442d9330ac3273abf568c33fce75a96378390f1d6af7dedcb90b620dba53f5'

  # runway-releases.s3.amazonaws.com/ was verified as official when first introduced to the cask
  url "https://runway-releases.s3.amazonaws.com/Runway-#{version}.dmg"
  appcast 'https://runway-releases.s3.amazonaws.com/latest-mac.yml'
  name 'Runway'
  homepage 'https://runwayml.com/'

  app 'Runway.app'
end
