cask 'syncthing-macos' do
  version '0.14.49-1'
  sha256 'cb42920780b27ffb7a85153416c79ffb05c68c6a5190fbe97477ed8f08cd1a8f'

  # github.com/syncthing/syncthing-macos was verified as official when first introduced to the cask
  url "https://github.com/syncthing/syncthing-macos/releases/download/v#{version}/Syncthing-#{version}.dmg"
  appcast 'https://upgrades.syncthing.net/syncthing-macos/appcast.xml'
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

  caveats "#{token} comes with the `syncthing` binary already bundled."
end
