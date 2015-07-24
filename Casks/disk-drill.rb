cask :v1 => 'disk-drill' do
  version '2.4.421'
  sha256 '048cf05b3338b1392e0dd3585bf4d107ad6b7ac15a958983817593cbe328285c'

  url "http://www.cleverfiles.com/releases/DiskDrill_#{version}.zip"
  appcast 'http://www.cleverfiles.com/releases/auto-update/dd2-newestr.xml'
  name 'Disk Drill'
  homepage 'http://www.cleverfiles.com/'
  license :unknown    # todo: change license and remove this comment; ':unknown' is a machine-generated placeholder

  app 'Disk Drill.app'

  zap :delete => [
                  '~/Library/Application Support/DiskDrill',
                  '~/Library/Caches/com.cleverfiles.Disk_Drill',
                  '~/Library/Logs/DiskDrill.log',
                 ]
end
