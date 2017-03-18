cask 'keycue' do
  version '8.3'
  sha256 'a261dad0a1f0dde6624d4824a3d7843422d3466ad605ea2fbcf831ecd10d578e'

  url "http://www.ergonis.com/downloads/products/keycue/KeyCue#{version.no_dots}-Install.dmg"
  name 'KeyCue'
  homepage 'http://www.ergonis.com/products/keycue/'

  app 'KeyCue.app'

  zap delete: [
                '~/Library/Application Support/KeyCue',
                '~/Library/Preferences/com.macility.keycue.plist',
              ]
end
