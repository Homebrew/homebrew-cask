cask 'kite' do
  version '0.20200123.0'
  sha256 '13108a6bd02a9cae5d53935dbb63c2e9600fc3ef12d0ca104a41da24850397a1'

  # kite-downloads.s3.amazonaws.com was verified as official when first introduced to the cask
  url "https://kite-downloads.s3.amazonaws.com/Kite-#{version}.dmg"
  appcast 'https://release.kite.com/appcast.xml'
  name 'Kite'
  homepage 'https://kite.com/'

  auto_updates true

  app 'Kite.app'
end
