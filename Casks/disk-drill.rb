cask 'disk-drill' do
  version '3.2.831'
  sha256 'aabc6555196cf87528c5d09c32f019ce1d301145a71c8986c334adc147d4c14b'

  url "https://www.cleverfiles.com/releases/DiskDrill_#{version}.zip"
  appcast 'https://www.cleverfiles.com/releases/auto-update/dd2-newestr.xml',
          checkpoint: '629e981f5994872e96fac0df0aa3d9606f1de90014e00305ed24ede0b902048e'
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
