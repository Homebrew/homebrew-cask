cask 'fsmonitor' do
  version '116'
  sha256 'b82c0fd1719775f27ad7e452c1b14449434ae48df824a1c34bbe5e2a365b023e'

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
