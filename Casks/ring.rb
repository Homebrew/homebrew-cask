cask 'ring' do
  version '1.85'
  sha256 '40ebfe2eea8c45ed5b55186c009dcc56d1cfebe37a4de5ed584e7b6dbb4da8b7'

  # ring-mac-app-assets.s3.amazonaws.com was verified as official when first introduced to the cask
  url "https://ring-mac-app-assets.s3.amazonaws.com/production/Ring_#{version}.zip"
  appcast 'https://ring-mac-app-assets.s3.amazonaws.com/production/ring-appcast.xml'
  name 'Ring'
  homepage 'https://ring.com/'

  auto_updates true

  app 'Ring.app'
end
