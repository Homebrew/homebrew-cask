cask 'fsmonitor' do
  version '80'
  sha256 'd7b22282de0dd1343af237effc5f186b05fa765169de679e769897a5f6ee6c45'

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
