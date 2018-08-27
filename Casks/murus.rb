cask 'murus' do
  version '1.4.17'
  sha256 'c2631b66d45791d1000654d2f203ed5634dc3239106c8c966f84ea365e38c6d5'

  url "https://www.murusfirewall.com/downloads/murus-#{version}.zip"
  name 'Murus Firewall'
  homepage 'https://www.murusfirewall.com/'

  depends_on macos: '>= :mavericks'

  app 'Murus.app'

  uninstall launchctl: 'it.murus.murusfirewallrules'

  zap trash: [
               '/Library/Application Support/Murus',
               '/etc/murus',
               '/etc/murus.sh',
               '~/Library/Caches/it.murus.Murus',
               '~/Library/Preferences/it.murus.Murus.plist',
               '/Library/Preferences/it.murus.muruslibrary.plist',
             ]
end
