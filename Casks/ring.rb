cask 'ring' do
  version '1.79'
  sha256 'f4f2e0138999d0977baf3d3bc4b7f363d2c8f78a7ea45ccd9eda238ec14f6021'

  # ring-mac-app-assets.s3.amazonaws.com was verified as official when first introduced to the cask
  url "https://ring-mac-app-assets.s3.amazonaws.com/production/Ring_#{version}.zip"
  appcast 'https://ring-mac-app-assets.s3.amazonaws.com/production/ring-appcast.xml',
          checkpoint: '999c288bbdd06aeffa48457f915cdd6f62062ffc27ed6649e7cded08eded53f3'
  name 'Ring'
  homepage 'https://ring.com/'

  auto_updates true

  app 'Ring.app'
end
