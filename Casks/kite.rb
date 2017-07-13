cask 'kite' do
  version '0.20170629.0'
  sha256 'd87aaa6c5fef1d9396b265ddf056dd4cb3b4310a28a3d04840bebc7b2557030c'

  # s3-us-west-1.amazonaws.com/kite-downloads was verified as official when first introduced to the cask
  url "https://s3-us-west-1.amazonaws.com/kite-downloads/Kite-#{version}.dmg"
  appcast 'https://release.kite.com/appcast.xml',
          checkpoint: '2e94f5ecca2fdf362389418175ef683ae0cb6bef73799a91574061b6329b0c83'
  name 'Kite'
  homepage 'https://kite.com/'

  auto_updates true

  app 'Kite.app'
end
