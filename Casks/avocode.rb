cask 'avocode' do
  version '2.12.1'
  sha256 'a9de8e88afdc1cf0af5bdb5c4f4bcf8c5c1d771a8075ca5f80e05d25f20e0bb0'

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
