cask 'kite' do
  version '0.20191202.0'
  sha256 'dd4ef6a8cd82ab8d92a633eb008b13022fd9e5cdf86ef82bb8040d90e97d6ef3'

  # kite-downloads.s3.amazonaws.com was verified as official when first introduced to the cask
  url "https://kite-downloads.s3.amazonaws.com/Kite-#{version}.dmg"
  appcast 'https://release.kite.com/appcast.xml'
  name 'Kite'
  homepage 'https://kite.com/'

  auto_updates true

  app 'Kite.app'
end
