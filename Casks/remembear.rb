cask 'remembear' do
  version '1.4.10'
  sha256 'f6f75c626816e4a165eb75fa14f7359573dc9ce2b89ea2001b6bb7645dd59bdf'

  # remembear.s3.amazonaws.com was verified as official when first introduced to the cask
  url "https://remembear.s3.amazonaws.com/app/release/downloads/macOS/RememBear-#{version}.dmg"
  appcast 'https://remembear.s3.amazonaws.com/app/release/downloads/macOS/appcast.xml'
  name 'RememBear'
  homepage 'https://www.remembear.com/'

  app 'RememBear.app'
end
