cask 'dripcap' do
  version '0.6.15'
  sha256 'a89f2eea194e6736b7ae2fa7d8668149c87a1c1378848460a6030b5fed9d187b'

  # github.com/dripcap was verified as official when first introduced to the cask
  url "https://github.com/dripcap/dripcap/releases/download/v#{version}/dripcap-darwin-amd64.dmg"
  appcast 'https://github.com/dripcap/dripcap/releases.atom',
          checkpoint: '7dc2b234e46244e85ce6736b4454a5fb819a149061d04b77a55caccac3e09d5b'
  name 'Dripcap'
  homepage 'https://dripcap.org/'

  app 'Dripcap.app'

  uninstall delete:    '/Library/PrivilegedHelperTools/org.dripcap.DripcapHelper',
            launchctl: 'org.dripcap.DripcapHelper'

  zap trash: [
               '~/.dripcap',
               '~/Library/Application Support/Dripcap',
               '~/Library/Preferences/com.electron.dripcap.helper.plist',
               '~/Library/Preferences/com.electron.dripcap.plist',
               '~/Library/Saved Application State/com.electron.dripcap.savedState',
             ]
end
