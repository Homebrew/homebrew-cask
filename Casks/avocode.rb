cask 'avocode' do
  version '2.13.5'
  sha256 'a7b3461fae265b59bed11df7e5b21200146a54e1f2abc619bb2dd1a165497b95'

  url "http://mediacdn.avocode.com/download/avocode-app/#{version}/avocode-app-mac-#{version}.zip"
  name 'Avocode'
  homepage 'https://avocode.com/'

  app 'Avocode.app'

  zap delete: [
                '~/Library/Preferences/com.madebysource.avocode.plist',
                '~/Library/Application Support/Avocode',
                '~/Library/Saved Application State/com.madebysource.avocode.savedState',
                '~/Library/Caches/Avocode',
                '~/.avcd',
              ]
end
