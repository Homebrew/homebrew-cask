cask 'murus' do
  version '2.0.2'
  sha256 '377c5df5e0c77c04e0f52c0d75cc26b44ae3098ff0ac0cb61073b48f68e5f83b'

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
