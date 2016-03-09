cask 'colorsnapper' do
  version '1.1.1'
  sha256 'd1a44272baa7f075b16b1d49a0968787a6711af6a6b6b82e072a6eed137de0d7'

  # amazonaws.com/cs2-binaries was verified as official when first introduced to the cask
  url "https://s3.amazonaws.com/cs2-binaries/ColorSnapper2-#{version.gsub('.', '_')}.zip"
  appcast 'http://colorsnapper.com/app/appcast.xml',
          checkpoint: '189b0b3b11a3116495c11cc64d59d78e6c5fa1cc8ed7645bb3551296f3a5476b'
  name 'ColorSnapper 2'
  homepage 'http://colorsnapper.com/'
  license :commercial

  app 'ColorSnapper2.app'

  uninstall quit: 'com.koolesache.ColorSnapper2'

  zap delete: [
                '~/Library/Application Support/ColorSnapper2',
                '~/Library/Caches/com.koolesache.ColorSnapper2',
                '~/Library/Preferences/com.koolesache.ColorSnapper2.plist',
              ]
end
