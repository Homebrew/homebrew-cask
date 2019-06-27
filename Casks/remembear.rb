cask 'remembear' do
  version '1.4.3'
  sha256 '8463cff3d914ef4049628c28c95ce61ae78e2fd339f002e84bf1c9a9c05a08e1'

  # remembear.s3.amazonaws.com was verified as official when first introduced to the cask
  url "https://remembear.s3.amazonaws.com/app/release/downloads/macOS/RememBear-#{version}.dmg"
  appcast 'https://remembear.s3.amazonaws.com/app/release/downloads/macOS/appcast.xml'
  name 'RememBear'
  homepage 'https://www.remembear.com/'

  app 'RememBear.app'
end
