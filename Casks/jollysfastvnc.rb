cask 'jollysfastvnc' do
  version '1.56'
  sha256 '4ff7a8d187316ee36188de89c7198d942fafe6a1d8f88b6452b331d494c6a190'

  url 'https://www.jinx.de/JollysFastVNC_files/JollysFastVNC.current.dmg'
  appcast 'https://www.jinx.de/JollysFastVNC.update.11.i386.xml'
  name 'JollysFastVNC'
  homepage 'https://www.jinx.de/JollysFastVNC.html'

  app 'JollysFastVNC.app'

  uninstall quit: 'de.jinx.JollysFastVNC'

  zap trash: [
               '~/Library/Caches/de.jinx.JollysFastVNC',
               '~/Library/Logs/JollysFastVNC.log*',
               '~/Library/Preferences/de.jinx.JollysFastVNC.plist',
               '~/Library/Saved Application State/de.jinx.JollysFastVNC.savedState',
             ]
end
