cask 'kite' do
  version '0.20180801.0'
  sha256 '861a83e9a1de9bcc3ecfb80cc4c9dd1630ea744ec7f8741174a69aeff0998592'

  # s3-us-west-1.amazonaws.com/kite-downloads was verified as official when first introduced to the cask
  url "https://s3-us-west-1.amazonaws.com/kite-downloads/Kite-#{version}.dmg"
  appcast 'https://release.kite.com/appcast.xml'
  name 'Kite'
  homepage 'https://kite.com/'

  auto_updates true
  depends_on macos: '>= :lion'

  app 'Kite.app'
end
