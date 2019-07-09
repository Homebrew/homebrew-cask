cask 'remembear' do
  version '1.4.4'
  sha256 '190a23eb4687659c98cb21e8d7f5c30fa332c6f6b0f99ebce17c4c6a914ba2af'

  # remembear.s3.amazonaws.com was verified as official when first introduced to the cask
  url "https://remembear.s3.amazonaws.com/app/release/downloads/macOS/RememBear-#{version}.dmg"
  appcast 'https://remembear.s3.amazonaws.com/app/release/downloads/macOS/appcast.xml'
  name 'RememBear'
  homepage 'https://www.remembear.com/'

  app 'RememBear.app'
end
