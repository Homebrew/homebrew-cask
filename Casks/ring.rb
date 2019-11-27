cask 'ring' do
  version '2.4.0'
  sha256 'f378d0f31a353fab104dade54313cf91c4e7a5063392b350476356c42277c1fb'

  # ring-mac-app-assets.s3.amazonaws.com was verified as official when first introduced to the cask
  url "https://ring-mac-app-assets.s3.amazonaws.com/production/Ring_#{version}.zip"
  appcast 'https://ring-mac-app-assets.s3.amazonaws.com/production/ring-appcast.xml'
  name 'Ring'
  homepage 'https://ring.com/'

  auto_updates true

  app 'Ring.app'
end
