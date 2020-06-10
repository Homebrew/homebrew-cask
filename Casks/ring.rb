cask 'ring' do
  version '2.5.0'
  sha256 'eab1d877c8812017e416683c2ceea4e5b8a200e662ea84c5109817d8799c5c47'

  # ring-mac-app-assets.s3.amazonaws.com/ was verified as official when first introduced to the cask
  url "https://ring-mac-app-assets.s3.amazonaws.com/production/Ring_#{version}.zip"
  appcast 'https://ring-mac-app-assets.s3.amazonaws.com/production/ring-appcast.xml'
  name 'Ring'
  homepage 'https://ring.com/'

  auto_updates true

  app 'Ring.app'
end
