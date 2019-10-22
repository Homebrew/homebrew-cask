cask 'ring' do
  version '2.3.0'
  sha256 '1b2147deca9c7cbfc3bbcf8c4269455bc15bd3302c9aa0241ae95afb9aab3f3c'

  # ring-mac-app-assets.s3.amazonaws.com was verified as official when first introduced to the cask
  url "https://ring-mac-app-assets.s3.amazonaws.com/production/Ring_#{version}.zip"
  appcast 'https://ring-mac-app-assets.s3.amazonaws.com/production/ring-appcast.xml'
  name 'Ring'
  homepage 'https://ring.com/'

  auto_updates true

  app 'Ring.app'
end
