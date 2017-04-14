cask 'colorsnapper' do
  version '1.3.2'
  sha256 'd866cf1040cfab7f4036050d1b50f9d9e05a65316607a0c55c3d96eb7443eaef'

  # amazonaws.com/cs2-binaries was verified as official when first introduced to the cask
  url "https://s3.amazonaws.com/cs2-binaries/ColorSnapper2-#{version.dots_to_underscores}.zip"
  appcast 'https://colorsnapper.com/app/appcast.xml',
          checkpoint: '189b0b3b11a3116495c11cc64d59d78e6c5fa1cc8ed7645bb3551296f3a5476b'
  name 'ColorSnapper 2'
  homepage 'https://colorsnapper.com/'

  app 'ColorSnapper2.app'

  uninstall quit: 'com.koolesache.ColorSnapper2'

  zap delete: [
                '~/Library/Application Support/ColorSnapper2',
                '~/Library/Caches/com.koolesache.ColorSnapper2',
                '~/Library/Preferences/com.koolesache.ColorSnapper2.plist',
              ]
end
