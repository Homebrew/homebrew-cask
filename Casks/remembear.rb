cask 'remembear' do
  version '1.4.11'
  sha256 'cb15f482c5de79fdc2e326fad0c36eddb73419f94d5d4366f7cb6dc710c98566'

  # remembear.s3.amazonaws.com was verified as official when first introduced to the cask
  url "https://remembear.s3.amazonaws.com/app/release/downloads/macOS/RememBear-#{version}.dmg"
  appcast 'https://remembear.s3.amazonaws.com/app/release/downloads/macOS/appcast.xml'
  name 'RememBear'
  homepage 'https://www.remembear.com/'

  app 'RememBear.app'
end
