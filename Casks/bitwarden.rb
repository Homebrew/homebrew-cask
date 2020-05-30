cask 'bitwarden' do
  version '1.18.0'
  sha256 'dd4dfb2b86bf576f547b7f49ae28c777531e67e7306b124cc4481445bb2e91b5'

  # github.com/bitwarden/desktop/ was verified as official when first introduced to the cask
  url "https://github.com/bitwarden/desktop/releases/download/v#{version}/Bitwarden-#{version}-mac.zip"
  appcast 'https://github.com/bitwarden/desktop/releases.atom'
  name 'Bitwarden'
  homepage 'https://bitwarden.com/'

  auto_updates true

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
