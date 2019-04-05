cask 'disk-drill' do
  version '3.7.932'
  sha256 '870be28a0ac95d4277f1f30c59c12a68019110c081dc75ab13dffc79623934de'

  url "https://www.cleverfiles.com/releases/DiskDrill_#{version}.zip"
  appcast 'https://www.cleverfiles.com/releases/auto-update/dd2-newestr.xml'
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
