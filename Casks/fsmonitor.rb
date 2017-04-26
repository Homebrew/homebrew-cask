cask 'fsmonitor' do
  version '82'
  sha256 'f0ed73790c5755c4859db415be40f7ddee1e7a86bc1ed3b8458ef70b686574a8'

  # tristan-software.ch/FSMonitor was verified as official when first introduced to the cask
  url "https://tristan-software.ch/FSMonitor/Archives/FSMonitor_#{version}.zip"
  name 'FSMonitor'
  homepage 'http://fsmonitor.com/'

  auto_updates true

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
