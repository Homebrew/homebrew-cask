cask 'kite' do
  version '0.20190611.0'
  sha256 'b573f328444cff1adba974b10017803a8f0fbafe166225efcf1daa25a871f363'

  # kite-downloads.s3.amazonaws.com was verified as official when first introduced to the cask
  url "https://kite-downloads.s3.amazonaws.com/Kite-#{version}.dmg"
  appcast 'https://release.kite.com/appcast.xml'
  name 'Kite'
  homepage 'https://kite.com/'

  auto_updates true

  app 'Kite.app'
end
