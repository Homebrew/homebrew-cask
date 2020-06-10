cask 'airy' do
  version '3.15,283'
  sha256 '3efb32bf817876802fa88d8b72def106c783a07efd600d89322261d8fbb9610e'

  url 'https://cdn.eltima.com/download/airy.dmg'
  appcast 'https://cdn.eltima.com/download/airy-update/airy.xml'
  name 'Airy'
  homepage 'https://mac.eltima.com/youtube-downloader-mac.html'

  app 'Airy.app'

  uninstall quit: 'com.eltima.Airy'

  zap trash: '~/Library/Preferences/com.eltima.Airy.plist'
end
