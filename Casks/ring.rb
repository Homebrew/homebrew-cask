cask 'ring' do
  version '0.55'
  sha256 'ea0a97d692866e9dbc09f228b6b098b3e3ecc1cc0d8ed04c0d649204035b7acd'

  # ring-mac-app-assets.s3.amazonaws.com was verified as official when first introduced to the cask
  url "https://ring-mac-app-assets.s3.amazonaws.com/production/Ring_#{version}.zip"
  appcast 'https://ring-mac-app-assets.s3.amazonaws.com/production/ring-appcast.xml',
          checkpoint: '56d4addc5e0302953537dfaff3cbd87283cc333e73d3b129bf251aa48a271f52'
  name 'Ring'
  homepage 'https://ring.com/'

  auto_updates true

  app 'Ring.app'
end
