cask 'colorsnapper' do
  version '1.0.9'
  sha256 'f3fec6e9c0cc7c20c2d6d514596796dea91be94ea5d739e97029af95c8f98a0e'

  # amazonaws.com is the official download host per the appcast feed
  url "https://s3.amazonaws.com/cs2-binaries/ColorSnapper2-#{version.gsub('.', '_')}.zip"
  appcast 'http://colorsnapper.com/app/appcast.xml',
          :checkpoint => 'fe8f652ccabc1622dd7a6e2bc511f5a9d973cc3cc03f64d8bede9805f44bdd2e'
  name 'ColorSnapper 2'
  homepage 'http://colorsnapper.com/'
  license :commercial

  app 'ColorSnapper2.app'

  uninstall :quit => 'com.koolesache.ColorSnapper2'

  zap :delete => [
                   '~/Library/Application Support/ColorSnapper2',
                   '~/Library/Caches/com.koolesache.ColorSnapper2',
                   '~/Library/Preferences/com.koolesache.ColorSnapper2.plist',
                 ]
end
