cask 'remembear' do
  version '1.4.13'
  sha256 '2ce98faa5469727ea9a9ea969c816f72b96570ba6023204143fca482055095af'

  # remembear.s3.amazonaws.com was verified as official when first introduced to the cask
  url "https://remembear.s3.amazonaws.com/app/release/downloads/macOS/RememBear-#{version}.dmg"
  appcast 'https://remembear.s3.amazonaws.com/app/release/downloads/macOS/appcast.xml'
  name 'RememBear'
  homepage 'https://www.remembear.com/'

  app 'RememBear.app'
end
