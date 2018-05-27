cask 'disk-drill' do
  version '3.5.890'
  sha256 'e8bc3e2235aa0f566aa6834f6f10eeae2816dcdc600c910812ac25c611dc7862'

  url "https://www.cleverfiles.com/releases/DiskDrill_#{version}.zip"
  appcast 'https://www.cleverfiles.com/releases/auto-update/dd2-newestr.xml',
          checkpoint: 'c1386c42735736c7bea41d599cc7af26a93df1ec462133951e2684186d5ffaa6'
  name 'Disk Drill'
  homepage 'https://www.cleverfiles.com/'

  app 'Disk Drill.app'

  uninstall delete: '/Library/Application Support/CleverFiles'

  zap trash: [
               '~/Library/Application Support/DiskDrill',
               '~/Library/Caches/com.cleverfiles.Disk_Drill',
               '~/Library/Logs/DiskDrill.log',
             ]
end
