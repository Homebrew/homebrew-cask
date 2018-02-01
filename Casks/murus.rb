cask 'murus' do
  version '1.4.15'
  sha256 'cbe24c01fa21546546d2067d50c88cab19135d1e56613bfabb0384acf6eb0bd6'

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
