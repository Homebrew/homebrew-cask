cask 'fsmonitor' do
  version '1.1.1,130'
  sha256 '001086f17c407e7d029e6bc78c91434855b2421c9c580f15ff23a5477e73052c'

  # tristan-software.ch/FSMonitor/ was verified as official when first introduced to the cask
  url "https://tristan-software.ch/FSMonitor/Archives/FSMonitor_#{version.before_comma}(#{version.after_comma}).zip"
  appcast 'https://fsmonitor.com/FSMonitor/Archives/appcast2.xml'
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
