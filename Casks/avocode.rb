cask 'avocode' do
  version '2.14.4'
  sha256 '13a9b25339048cb3228d399239ec4e1f30a816be0278a62edcdb28d7f75f6824'

  url "http://media.avocode.com/download/avocode-app/#{version}/Avocode-#{version}-mac.zip"
  name 'Avocode'
  homepage 'https://avocode.com/'

  app 'Avocode.app'

  zap delete: [
                '~/Library/Preferences/com.madebysource.avocode.plist',
                '~/Library/Preferences/com.madebysource.avocode.helper.plist',
                '~/Library/Application Support/Avocode',
                '~/Library/Saved Application State/com.madebysource.avocode.savedState',
                '~/Library/Caches/com.madebysource.avocode',
                '~/.avocode',
              ]
end
