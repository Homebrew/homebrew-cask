cask 'bitwarden' do
  version '1.7.0'
  sha256 '7bbcb087bdf31d442fdbb7285aee6bc8f762f41ab19d9f9b4236d04e9b62e872'

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
               '~/Library/Preferences/com.bitwarden.desktop.plist',
               '~/Library/Preferences/com.bitwarden.desktop.helper.plist',
             ]
end
