cask 'disk-drill' do
  version '2.4.437'
  sha256 'd36b77a99076f3c5f7bd59a97bd5142201dc7c3ada047bcdc41b794f02aa9b2a'

  url "http://www.cleverfiles.com/releases/DiskDrill_#{version}.zip"
  appcast 'http://www.cleverfiles.com/releases/auto-update/dd2-newestr.xml',
          checkpoint: '231b6be22a966c73c235f81b40eb7253b7359da943e931266564212013acb8af'
  name 'Disk Drill'
  homepage 'http://www.cleverfiles.com/'
  license :freemium

  app 'Disk Drill.app'

  uninstall delete: '/Library/Application Support/CleverFiles'

  zap delete: [
                '~/Library/Application Support/DiskDrill',
                '~/Library/Caches/com.cleverfiles.Disk_Drill',
                '~/Library/Logs/DiskDrill.log',
              ]
end
