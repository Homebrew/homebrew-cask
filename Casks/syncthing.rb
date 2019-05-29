cask 'syncthing' do
  version '1.0.0-2'
  sha256 '71b8796d4e8801acc7e8176c7e587a50a8960adaabac7fa94ad0f4c72b32bad5'

  # github.com/syncthing/syncthing-macos was verified as official when first introduced to the cask
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
