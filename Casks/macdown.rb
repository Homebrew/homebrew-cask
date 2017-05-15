cask 'macdown' do
  version '0.7.1'
  sha256 '9856d701739fab66b75aa52c98ba54d93eb10de765f63ffe149e666e6e035578'

  # github.com/MacDownApp/macdown was verified as official when first introduced to the cask
  url "https://github.com/MacDownApp/macdown/releases/download/v#{version}/MacDown.app.zip"
  appcast 'http://macdown.uranusjr.com/sparkle/macdown/stable/appcast.xml',
          checkpoint: '258b52ee033ead7b2264e772b077e747bfedd4cc081d5b4bb16217f94451e35e'
  name 'MacDown'
  homepage 'https://macdown.uranusjr.com/'

  auto_updates true

  app 'MacDown.app'
  binary "#{appdir}/MacDown.app/Contents/SharedSupport/bin/macdown"

  zap delete: [
                '~/Library/Caches/com.uranusjr.macdown',
                '~/Library/Cookies/com.uranusjr.macdown.binarycookies',
                '~/Library/Preferences/com.uranusjr.macdown.plist',
                '~/Library/Preferences/com.uranusjr.macdown.LSSharedFileList.plist',
                '~/Library/Application Support/MacDown',
                '~/Library/WebKit/com.uranusjr.macdown',
              ]
end
