cask 'bitwarden' do
  version '1.16.2'
  sha256 '519d5f8effe516cfd2c549a2d048865d0074664419d7c91b73277b2e4e47877e'

  # github.com/bitwarden/desktop was verified as official when first introduced to the cask
  url "https://github.com/bitwarden/desktop/releases/download/v#{version}/Bitwarden-#{version}-mac.zip"
  appcast 'https://github.com/bitwarden/desktop/releases.atom'
  name 'Bitwarden'
  homepage 'https://bitwarden.com/'

  app 'Bitwarden.app'

  uninstall quit: [
                    'com.bitwarden.desktop',
                    'com.bitwarden.desktop.helper',
                  ]

  zap trash: [
               '~/Library/Logs/Bitwarden',
               '~/Library/Application Support/Bitwarden',
               '~/Library/Caches/com.bitwarden.desktop',
               '~/Library/Caches/com.bitwarden.desktop.ShipIt',
               '~/Library/Preferences/ByHost/com.bitwarden.desktop.ShipIt.*.plist',
               '~/Library/Preferences/com.bitwarden.desktop.plist',
               '~/Library/Preferences/com.bitwarden.desktop.helper.plist',
               '~/Library/Saved Application State/com.bitwarden.desktop.savedState',
             ]
end
