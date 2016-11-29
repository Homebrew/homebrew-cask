cask 'avocode' do
  version '2.11.1'
  sha256 '5d8dd411562761f51044256d496c8a03e6299d3c34ca929c0e56bd3b055899f1'

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
