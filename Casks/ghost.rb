cask 'ghost' do
  version '1.7.0'
  sha256 'ce719dd50feec6cf811fdcac74edea937b20bc767be6fe086b8574f9b1686b3c'

  # github.com/TryGhost/Ghost-Desktop was verified as official when first introduced to the cask
  url "https://github.com/TryGhost/Ghost-Desktop/releases/download/v#{version}/ghost-desktop-#{version}-osx.dmg"
  appcast 'https://github.com/TryGhost/Ghost-Desktop/releases.atom'
  name 'Ghost Desktop'
  homepage 'https://ghost.org/downloads/'

  depends_on macos: '>= :mavericks'

  app 'Ghost.app'

  zap trash: [
               '~/Library/Application Support/ghost-desktop',
               '~/Library/Preferences/com.electron.ghost.helper.plist',
               '~/Library/Preferences/com.electron.ghost.plist',
               '~/Library/Saved Application State/com.electron.ghost.savedState',
               '~/Library/Logs/Ghost',
             ]
end
