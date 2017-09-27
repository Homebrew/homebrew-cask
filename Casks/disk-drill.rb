cask 'disk-drill' do
  version '3.5.860'
  sha256 'd7c82a1a9102f92b7327782fa810293cdf305053d8e087f63ab0fb5b7619c8a0'

  url "https://www.cleverfiles.com/releases/DiskDrill_#{version}.zip"
  appcast 'https://www.cleverfiles.com/releases/auto-update/dd2-newestr.xml',
          checkpoint: '5948c511c26f337c20fc9a3d157962d7d1b44349438a546439acbf64a875c27a'
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
