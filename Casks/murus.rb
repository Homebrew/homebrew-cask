cask 'murus' do
  version '2.0.1'
  sha256 'f9f8174fc928009f0990e38ce650e95582004f729b5c018c098382cde92b3408'

  # github.com/TheMurusTeam/Murus was verified as official when first introduced to the cask
  url "https://github.com/TheMurusTeam/Murus/releases/download/v#{version}/murus-#{version}.zip"
  appcast 'https://github.com/TheMurusTeam/Murus/releases.atom'
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
