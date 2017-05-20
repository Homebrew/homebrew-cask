cask 'avocode' do
  version '2.14.0'
  sha256 '08b12922f5fb2dda4242ac2efa03be570d7117d303eb91d178ab74d0f023f174'

  url "http://media.avocode.com/download/avocode-app/#{version}/Avocode-#{version}-mac.zip"
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
