cask 'disk-drill' do
  version '3.3.846'
  sha256 'cda0c421eee775e878dd2c1ddd1b331892f07c7ca76568ce2dd041e6dd7b8845'

  url "https://www.cleverfiles.com/releases/DiskDrill_#{version}.zip"
  appcast 'https://www.cleverfiles.com/releases/auto-update/dd2-newestr.xml',
          checkpoint: '75dd8f852613d43d2d7644da172700fd4133e10404d41bc0c6593a5530c02121'
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
