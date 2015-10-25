cask :v1 => 'colorsnapper' do
  version '1.0.9'
  sha256 'f3fec6e9c0cc7c20c2d6d514596796dea91be94ea5d739e97029af95c8f98a0e'

  # amazonaws.com is the official download host per the appcast feed
  url "https://s3.amazonaws.com/cs2-binaries/ColorSnapper2-#{version.gsub('.','_')}.zip"
  appcast 'http://colorsnapper.com/app/appcast.xml',
          :sha256 => '9daf5dda4d8111b524b89f4a79ecf489793151f8c62d6d5c31aa64a663512957'
  name 'ColorSnapper 2'
  homepage 'http://colorsnapper.com/'
  license :commercial

  app 'ColorSnapper2.app'

  uninstall :quit => 'com.koolesache.ColorSnapper2'

  zap :delete => [
                  '~/Library/Application Support/ColorSnapper2',
                  '~/Library/Caches/com.koolesache.ColorSnapper2',
                  '~/Library/Preferences/com.koolesache.ColorSnapper2.plist'
                 ]
end
