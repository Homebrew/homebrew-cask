cask 'airy' do
  version '3.8,212'
  sha256 '72d84283e8abc794a26168330128a2bbfe71c7913fad1c579877246048a97bab'

  url 'https://cdn.eltima.com/download/airy.dmg'
  appcast 'https://cdn.eltima.com/download/airy-update/airy.xml'
  name 'Airy'
  homepage 'https://mac.eltima.com/youtube-downloader-mac.html'

  app 'Airy.app'

  uninstall quit: 'com.eltima.Airy'

  zap trash: '~/Library/Preferences/com.eltima.Airy.plist'
end
