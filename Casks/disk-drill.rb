cask :v1 => 'disk-drill' do
  version '2.4.426'
  sha256 '91107b0866bdc19d997f5dcfd3360dc3cace5afe9b072cd78f9f0146073694ec'

  url "http://www.cleverfiles.com/releases/DiskDrill_#{version}.zip"
  appcast 'http://www.cleverfiles.com/releases/auto-update/dd2-newestr.xml',
          :sha256 => '3f07d5095326732aff7f49488ebd37ad2ab60aede456ea009334f5e6f879572b'
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
