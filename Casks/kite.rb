cask 'kite' do
  version '0.20190410.0'
  sha256 '00b605b615a552b9eb0d8779da3c6732d5be38a2752122d11dd907646088b0dc'

  # s3-us-west-1.amazonaws.com/kite-downloads was verified as official when first introduced to the cask
  url "https://s3-us-west-1.amazonaws.com/kite-downloads/Kite-#{version}.dmg"
  appcast 'https://release.kite.com/appcast.xml'
  name 'Kite'
  homepage 'https://kite.com/'

  auto_updates true

  app 'Kite.app'
end
