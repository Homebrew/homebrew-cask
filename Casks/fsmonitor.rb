cask 'fsmonitor' do
  version '87'
  sha256 '0e5f482a74889a57bbed00553f50405ee86626635e77b32e69a4e373693604e3'

  # tristan-software.ch/FSMonitor was verified as official when first introduced to the cask
  url "https://tristan-software.ch/FSMonitor/Archives/FSMonitor_#{version}.zip"
  name 'FSMonitor'
  homepage 'https://fsmonitor.com/'

  auto_updates true

  app 'FSMonitor.app'

  uninstall delete:    '/Library/PrivilegedHelperTools/com.tristan.fseventstool',
            launchctl: 'com.tristan.fseventstool'

  zap trash: [
               '/Users/Shared/FSMonitor',
               '~/Library/Application Support/FSMonitor',
               '~/Library/Application Support/com.tristan.FSMonitor',
               '~/Library/Caches/com.tristan.FSMonitor',
               '~/Library/Preferences/com.tristan.FSMonitor.plist',
               '~/Library/Saved Application State/com.tristan.FSMonitor.savedState',
             ]
end
