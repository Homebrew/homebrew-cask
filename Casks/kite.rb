cask 'kite' do
  version '0.20191213.0'
  sha256 '7efb0491f4a010afa9944f996546b4d336e1a3da9f54b501085a5a0b9b0a19c2'

  # kite-downloads.s3.amazonaws.com was verified as official when first introduced to the cask
  url "https://kite-downloads.s3.amazonaws.com/Kite-#{version}.dmg"
  appcast 'https://release.kite.com/appcast.xml'
  name 'Kite'
  homepage 'https://kite.com/'

  auto_updates true

  app 'Kite.app'
end
