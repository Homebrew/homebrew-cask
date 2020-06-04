cask 'nord-sound-manager' do
  version '7.54'
  sha256 '6a58ef7ddbc5f5c40d278bf91b63331e5ee435e6faa2ec3dfb4eff22d9bc3061'

  url "https://www.nordkeyboards.com/sites/default/files/files/downloads/software/nord-sound-manager/Nord%20Sound%20Manager%20v#{version}.dmg"
  appcast "https://www.nordkeyboards.com/software-tools/nord-sound-manager/update-history"
  name 'Nord Sound Manager'
  homepage 'https://www.nordkeyboards.com/downloads/software-tools/nord-sound-manager'

  app "Nord Sound Manager v#{version}.app"

  zap trash: [
               '~/Library/Preferences/com.clavia.NordSoundManager.plist',
               '~/Library/Saved Application State/com.clavia.NordSoundManager.savedState',
             ]
end
