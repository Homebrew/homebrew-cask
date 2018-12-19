cask 'bitwarden' do
  version '1.11.2'
  sha256 '2dd09312c5ed1f80e8a8d4d12219df1e3016eef1dcb662c1da95da17da0ea1f4'

  # github.com/bitwarden/desktop was verified as official when first introduced to the cask
  url "https://github.com/bitwarden/desktop/releases/download/v#{version}/bitwarden-#{version}-mac.zip"
  appcast 'https://github.com/bitwarden/desktop/releases.atom'
  name 'Bitwarden'
  homepage 'https://bitwarden.com/'

  depends_on macos: '>= :mavericks'

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
