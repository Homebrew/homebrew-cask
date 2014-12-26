cask :v1 => 'disk-drill' do
  version :latest
  sha256 :no_check

  url 'http://dl.cleverfiles.com/diskdrill.dmg'
  appcast 'http://www.cleverfiles.com/releases/auto-update/dd2-newestr.xml'
  homepage 'http://www.cleverfiles.com/'
  license :unknown    # todo: change license and remove this comment; ':unknown' is a machine-generated placeholder

  app 'Disk Drill.app'

  zap :delete => [
                  '~/Library/Application Support/DiskDrill',
                  '~/Library/Caches/com.cleverfiles.Disk_Drill',
                  '~/Library/Logs/DiskDrill.log',
                 ]
end
