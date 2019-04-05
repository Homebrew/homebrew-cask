cask 'bitwarden' do
  version '1.14.0'
  sha256 '7ae64e2cac2050c0381c86d8422217132a1973a956ebd7f94ce76c931ec9cc08'

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
