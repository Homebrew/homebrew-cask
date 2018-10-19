cask 'jollysfastvnc' do
  version '1.54'
  sha256 '2d205f98db9afaef25e591166a82aab84263df9def3214eea53af423f43e8017'

  url 'https://www.jinx.de/JollysFastVNC_files/JollysFastVNC.current.dmg'
  appcast 'https://www.jinx.de/JollysFastVNC.update.11.i386.xml'
  name 'JollysFastVNC'
  homepage 'https://www.jinx.de/JollysFastVNC.html'

  depends_on macos: '>= :lion'

  app 'JollysFastVNC.app'

  uninstall quit: 'de.jinx.JollysFastVNC'

  zap trash: [
               '~/Library/Caches/de.jinx.JollysFastVNC',
               '~/Library/Logs/JollysFastVNC.log*',
               '~/Library/Preferences/de.jinx.JollysFastVNC.plist',
               '~/Library/Saved Application State/de.jinx.JollysFastVNC.savedState',
             ]
end
