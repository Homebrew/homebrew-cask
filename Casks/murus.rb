cask 'murus' do
  version '2.0'
  sha256 'ca8d475f28b3cb4c1a2e5e1e65fb74be2e6575b8f9ab8541b9d1a9c1b6aac16c'

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
