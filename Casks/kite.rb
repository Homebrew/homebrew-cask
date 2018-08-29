cask 'kite' do
  version '0.20180828.0'
  sha256 '020a5c7e6a2c375ebb30658b8ee39eb2a3e74a9fa2bfd78fbbffdc5ec39e36b6'

  # s3-us-west-1.amazonaws.com/kite-downloads was verified as official when first introduced to the cask
  url "https://s3-us-west-1.amazonaws.com/kite-downloads/Kite-#{version}.dmg"
  appcast 'https://release.kite.com/appcast.xml'
  name 'Kite'
  homepage 'https://kite.com/'

  auto_updates true
  depends_on macos: '>= :lion'

  app 'Kite.app'
end
