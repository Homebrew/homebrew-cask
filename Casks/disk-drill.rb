class DiskDrill < Cask
  version :latest
  sha256 :no_check

  url 'http://dl.cleverfiles.com/diskdrill.dmg'
  appcast 'http://www.cleverfiles.com/releases/auto-update/dd2-newestr.xml'
  homepage 'http://www.cleverfiles.com/'
  license :unknown

  app 'Disk Drill.app'

  zap :delete => [
                  '~/Library/Application Support/DiskDrill',
                  '~/Library/Caches/com.cleverfiles.Disk_Drill',
                  '~/Library/Logs/DiskDrill.log',
                 ]
end
