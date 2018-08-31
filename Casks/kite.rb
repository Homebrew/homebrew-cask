cask 'kite' do
  version '0.20180830.0'
  sha256 '90b7bd963e5bc705e8d14e43ff7aa625acaddcb8b250e4d14804e263a1f66a6e'

  # s3-us-west-1.amazonaws.com/kite-downloads was verified as official when first introduced to the cask
  url "https://s3-us-west-1.amazonaws.com/kite-downloads/Kite-#{version}.dmg"
  appcast 'https://release.kite.com/appcast.xml'
  name 'Kite'
  homepage 'https://kite.com/'

  auto_updates true
  depends_on macos: '>= :lion'

  app 'Kite.app'
end
