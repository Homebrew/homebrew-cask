cask 'murus' do
  version '2.0'
  sha256 '12b659ea76f6a7a950c65659e571d2ea8cc1f5b871d011e5f26b3dd21c710639'

  url "https://github.com/TheMurusTeam/Murus/releases/download/v2.0/murus-#{version}.zip"
  name 'Murus Firewall'
  homepage 'https://www.murusfirewall.com/'

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
