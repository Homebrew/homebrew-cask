cask 'kite' do
  version '0.20170526.0'
  sha256 'cbb98923c46bd2c2b16cc03d6df2051ab6b6e8dda777f6884197d6257c0e8ee7'

  # s3-us-west-1.amazonaws.com/kite-downloads was verified as official when first introduced to the cask
  url "https://s3-us-west-1.amazonaws.com/kite-downloads/Kite-#{version}.dmg"
  appcast 'https://release.kite.com/appcast.xml',
          checkpoint: 'c2f06763e6c89c4d273930cc9aa8a530617539c861edfb70e6d0f71fad4c100c'
  name 'Kite'
  homepage 'https://kite.com/'

  auto_updates true

  app 'Kite.app'
end
