cask 'ring' do
  version '0.55'
  sha256 'ea0a97d692866e9dbc09f228b6b098b3e3ecc1cc0d8ed04c0d649204035b7acd'

  # ring-mac-app-assets.s3.amazonaws.com was verified as official when first introduced to the cask
  url "https://ring-mac-app-assets.s3.amazonaws.com/production/Ring_#{version}.zip"
  appcast 'https://ring-mac-app-assets.s3.amazonaws.com/production/ring-appcast.xml',
          checkpoint: 'cc3682c38fe59e30111fee2ef9bfab02661c0f188082c29f82df04f047e5d11f'
  name 'Ring'
  homepage 'https://ring.com/'

  auto_updates true

  app 'Ring.app'
end
