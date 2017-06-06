cask 'kite' do
  version '0.20170601.0'
  sha256 '66f8c4d217af9ec5839ed23e4e2b72c699ec9fbb95fdcccbc20aa78d14e8242b'

  # s3-us-west-1.amazonaws.com/kite-downloads was verified as official when first introduced to the cask
  url "https://s3-us-west-1.amazonaws.com/kite-downloads/Kite-#{version}.dmg"
  appcast 'https://release.kite.com/appcast.xml',
          checkpoint: '0249db2c900276925fb608b24329c60a114ea7648a231bd2b18ab32b31ab3c9b'
  name 'Kite'
  homepage 'https://kite.com/'

  auto_updates true

  app 'Kite.app'
end
