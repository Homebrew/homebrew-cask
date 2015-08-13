cask :v1 => 'disk-drill' do
  version '2.4.426'
  sha256 '91107b0866bdc19d997f5dcfd3360dc3cace5afe9b072cd78f9f0146073694ec'

  url "http://www.cleverfiles.com/releases/DiskDrill_#{version}.zip"
  appcast 'http://www.cleverfiles.com/releases/auto-update/dd2-newestr.xml',
          :sha256 => '13eb31a4e92818faf847cc8d484ebed32750341f15faff6ef205921372efc9d8'
  name 'Disk Drill'
  homepage 'http://www.cleverfiles.com/'
  license :freemium

  app 'Disk Drill.app'

  uninstall :delete => '/Library/Application Support/CleverFiles'

  zap :delete => [
                  '~/Library/Application Support/DiskDrill',
                  '~/Library/Caches/com.cleverfiles.Disk_Drill',
                  '~/Library/Logs/DiskDrill.log',
                 ]
end
