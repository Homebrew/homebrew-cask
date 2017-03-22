cask 'fsmonitor' do
  version '79'
  sha256 'b625147eabf84011548e7ddbb356e132bfcdd6b74e556169ac31c2d089127026'

  # tristan-software.ch/FSMonitor was verified as official when first introduced to the cask
  url "https://tristan-software.ch/FSMonitor/Archives/FSMonitor_#{version}.zip"
  name 'FSMonitor'
  homepage 'http://fsmonitor.com/'

  app 'FSMonitor.app'

  postflight do
    suppress_move_to_applications
  end

  zap delete: [
                '/Library/LaunchDaemons/com.tristan.fseventstool.plist',
                '/Library/PrivilegedHelperTools/com.tristan.fseventstool',
                '/Users/Shared/FSMonitor',
                '~/Library/Application Support/FSMonitor',
                '~/Library/Application Support/com.tristan.FSMonitor',
                '~/Library/Caches/com.tristan.FSMonitor',
                '~/Library/Preferences/com.tristan.FSMonitor.plist',
              ]
end
