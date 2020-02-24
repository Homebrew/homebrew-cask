cask 'ring' do
  version '2.4.2'
  sha256 '1b1314aa5bb9b1b8b16bb3760a707405589c234eb9e92ea45bbfaf8bd4afb8dc'

  # ring-mac-app-assets.s3.amazonaws.com was verified as official when first introduced to the cask
  url "https://ring-mac-app-assets.s3.amazonaws.com/production/Ring_#{version}.zip"
  appcast 'https://ring-mac-app-assets.s3.amazonaws.com/production/ring-appcast.xml'
  name 'Ring'
  homepage 'https://ring.com/'

  auto_updates true

  app 'Ring.app'
end
