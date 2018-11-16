cask 'syncthing-app' do
  version '0.14.52-1'
  sha256 'b67d9e04f7d149395324e9b03f67785e5d249dabd6c7f5b1e7c1dec239a03ae5'

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
