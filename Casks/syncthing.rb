cask 'syncthing' do
  version '1.6.1-1'
  sha256 '6ef012c28776ce3b86d75596daa25bd0699c4fcb5e200610431ceffe3711adb3'

  # github.com/syncthing/syncthing-macos/ was verified as official when first introduced to the cask
  url "https://github.com/syncthing/syncthing-macos/releases/download/v#{version}/Syncthing-#{version}.dmg"
  appcast 'https://github.com/syncthing/syncthing-macos/releases.atom'
  name 'Syncthing'
  homepage 'https://syncthing.net/'

  auto_updates true
  depends_on macos: '>= :yosemite'

  app 'Syncthing.app'

  zap trash: [
               '~/Library/Application Support/Syncthing-macOS',
               '~/Library/Caches/com.github.xor-gate.syncthing-macosx',
               '~/Library/Cookies/com.github.xor-gate.syncthing-macosx.binarycookies',
               '~/Library/Preferences/com.github.xor-gate.syncthing-macosx.plist',
             ]
end
