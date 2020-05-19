cask 'genymotion' do
  version '3.1.0'
  sha256 '87b8c45705b633933a3b0ac401b8a9c46f9bfa1d7856af89c1b475c3a1ebe00c'

  url "https://dl.genymotion.com/releases/genymotion-#{version}/genymotion-#{version}.dmg"
  appcast 'https://www.genymotion.com/product-release-note/desktop/'
  name 'Genymotion'
  homepage 'https://www.genymotion.com/'

  depends_on cask: 'virtualbox'

  app 'Genymotion.app'
  app 'Genymotion Shell.app'
  binary "#{appdir}/Genymotion Shell.app/Contents/MacOS/genyshell"

  zap trash: [
               '~/.Genymobile',
               '~/Library/Caches/Genymobile',
               '~/Library/Preferences/com.genymobile.Genymotion.plist',
               '~/Library/Preferences/com.genymobile.soft.Genymotion.plist',
               '~/Library/Saved Application State/com.genymobile.genymotion.savedState',
               '~/Library/Saved Application State/com.genymobile.player.savedState',
             ]
end
