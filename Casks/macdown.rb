cask 'macdown' do
  version '0.8.0d71'
  sha256 '6376343fe54a8f4c1dfe3b7c2a2bef0988d636692e2ffc2d20bd4f21543cc78f'

  # github.com/MacDownApp/macdown was verified as official when first introduced to the cask
  url "https://github.com/MacDownApp/macdown/releases/download/v#{version}/MacDown.app.zip"
  appcast 'https://macdown.uranusjr.com/sparkle/macdown/stable/appcast.xml'
  name 'MacDown'
  homepage 'https://macdown.uranusjr.com/'

  auto_updates true

  app 'MacDown.app'
  binary "#{appdir}/MacDown.app/Contents/SharedSupport/bin/macdown"

  zap trash: [
               '~/Library/Application Support/MacDown',
               '~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/com.uranusjr.macdown.sfl*',
               '~/Library/Caches/com.uranusjr.macdown',
               '~/Library/Cookies/com.uranusjr.macdown.binarycookies',
               '~/Library/Preferences/com.uranusjr.macdown.plist',
               '~/Library/Saved Application State/com.uranusjr.macdown.savedState',
               '~/Library/WebKit/com.uranusjr.macdown',
             ]
end
