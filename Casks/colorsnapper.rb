cask 'colorsnapper' do
  version '1.0.9'
  sha256 'f3fec6e9c0cc7c20c2d6d514596796dea91be94ea5d739e97029af95c8f98a0e'

  # amazonaws.com is the official download host per the appcast feed
  url "https://s3.amazonaws.com/cs2-binaries/ColorSnapper2-#{version.gsub('.', '_')}.zip"
  appcast 'http://colorsnapper.com/app/appcast.xml',
          checkpoint: '7be12d5557005c859548ed40e93e5ce57147f9cab7b4cb50a1a88e3bb01e4a33'
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
