cask 'macdown' do
  version '0.7'
  sha256 '48860effc92c39ffbaa41f182d55c2997d4f4fb47b19ec522d3ead07884ee6b3'

  # github.com/MacDownApp/macdown was verified as official when first introduced to the cask
  url "https://github.com/MacDownApp/macdown/releases/download/v#{version}/MacDown.app.zip"
  appcast 'http://macdown.uranusjr.com/sparkle/macdown/stable/appcast.xml',
          checkpoint: '916680a21f1811ce86ddf065c9623f313901358e223fe9d756325d911a1a69b8'
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
