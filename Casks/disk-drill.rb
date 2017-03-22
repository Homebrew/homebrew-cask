cask 'disk-drill' do
  version '3.1.769'
  sha256 '1195e022934979d36350d25cc3c917a6dd649a4c8ff2191b3e6778899073415f'

  url "https://www.cleverfiles.com/releases/DiskDrill_#{version}.zip"
  appcast 'https://www.cleverfiles.com/releases/auto-update/dd2-newestr.xml',
          checkpoint: 'ffdd694a03a3cab0230d7315e5520d8acfaf687eabbe9ec5e04e3e2f16596f72'
  name 'Disk Drill'
  homepage 'https://www.cleverfiles.com/'

  app 'Disk Drill.app'

  uninstall delete: '/Library/Application Support/CleverFiles'

  zap delete: [
                '~/Library/Application Support/DiskDrill',
                '~/Library/Caches/com.cleverfiles.Disk_Drill',
                '~/Library/Logs/DiskDrill.log',
              ]
end
