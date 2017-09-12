cask 'kite' do
  version '0.20170907.0'
  sha256 '976af2fd252bb79d54bafef9b5f9187b60e1ca6759a784141368b8ea16b7ca32'

  # s3-us-west-1.amazonaws.com/kite-downloads was verified as official when first introduced to the cask
  url "https://s3-us-west-1.amazonaws.com/kite-downloads/Kite-#{version}.dmg"
  appcast 'https://release.kite.com/appcast.xml',
          checkpoint: '3bb95d37fad56868852fa0e113c167e1be5dadde433b519f8d7fd73af190728e'
  name 'Kite'
  homepage 'https://kite.com/'

  auto_updates true

  app 'Kite.app'
end
