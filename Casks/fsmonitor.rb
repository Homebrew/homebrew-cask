cask 'fsmonitor' do
  version '90'
  sha256 '9699fd67fe07069763dd53b19cebb00855569a949c14efb418d134d5c47d662a'

  # tristan-software.ch/FSMonitor was verified as official when first introduced to the cask
  url "https://tristan-software.ch/FSMonitor/Archives/FSMonitor_#{version}.zip"
  appcast 'https://fsmonitor.com/FSMonitor/Archives/appcast.xml'
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
