cask 'fsmonitor' do
  version '84'
  sha256 '9f835c5d257bd6ef66bd2f8ddc0229ff3829bd556bbde75521b98b794f32a164'

  # tristan-software.ch/FSMonitor was verified as official when first introduced to the cask
  url "https://tristan-software.ch/FSMonitor/Archives/FSMonitor_#{version}.zip"
  name 'FSMonitor'
  homepage 'https://fsmonitor.com/'

  auto_updates true

  app 'FSMonitor.app'

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
