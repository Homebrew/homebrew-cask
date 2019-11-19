cask 'macdown' do
  version '0.7.2'
  sha256 'bd6ccc7c4e87fcdfa0cf4e3580f46bb47d32f61c6e9ab51025677604dcd75635'

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
