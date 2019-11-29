cask 'kite' do
  version '0.20191127.2'
  sha256 'c584af8fba84c9da28e3b84ff270b6003fd4e9d488a30b20759825908516a66e'

  # kite-downloads.s3.amazonaws.com was verified as official when first introduced to the cask
  url "https://kite-downloads.s3.amazonaws.com/Kite-#{version}.dmg"
  appcast 'https://release.kite.com/appcast.xml'
  name 'Kite'
  homepage 'https://kite.com/'

  auto_updates true

  app 'Kite.app'
end
