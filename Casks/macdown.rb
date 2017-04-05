cask 'macdown' do
  version '0.6.4'
  sha256 'fcc7950c69eca4428a2eb4c2705e032a747eacb2b657bc48195c3aee60d35f25'

  # github.com/MacDownApp/macdown was verified as official when first introduced to the cask
  url "https://github.com/MacDownApp/macdown/releases/download/v#{version}/MacDown.app.zip"
  appcast 'http://macdown.uranusjr.com/sparkle/macdown/stable/appcast.xml',
          checkpoint: 'b5d3dd1f4690778a82675d110ff4699aecbd29a6597214492756d1e8d38310f6'
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
