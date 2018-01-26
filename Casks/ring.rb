cask 'ring' do
  version '0.74'
  sha256 'de434bdea5264d458f697075d92e992496a510f9b2185a9044c1ca05689d2753'

  # ring-mac-app-assets.s3.amazonaws.com was verified as official when first introduced to the cask
  url "https://ring-mac-app-assets.s3.amazonaws.com/production/Ring_#{version}.zip"
  appcast 'https://ring-mac-app-assets.s3.amazonaws.com/production/ring-appcast.xml',
          checkpoint: '68784e331c692110b9a5d05bd5231178998a38d96ef1151e96eaee39099f7ae7'
  name 'Ring'
  homepage 'https://ring.com/'

  auto_updates true

  app 'Ring.app'
end
