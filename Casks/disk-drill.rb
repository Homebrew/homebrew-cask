cask 'disk-drill' do
  version '2.4.441'
  sha256 'fdce1fc076289d3fb8be94bd3850a138c9bf9e556782b0b1fbae6efcdcb991c8'

  url "http://www.cleverfiles.com/releases/DiskDrill_#{version}.zip"
  appcast 'http://www.cleverfiles.com/releases/auto-update/dd2-newestr.xml',
          checkpoint: 'dc4a2e03561b3d906015f4723ea529649c1ecce54612ca79345b6244cb982f7c'
  name 'Disk Drill'
  homepage 'http://www.cleverfiles.com/'
  license :freemium

  app 'Disk Drill.app'

  uninstall delete: '/Library/Application Support/CleverFiles'

  zap delete: [
                '~/Library/Application Support/DiskDrill',
                '~/Library/Caches/com.cleverfiles.Disk_Drill',
                '~/Library/Logs/DiskDrill.log',
              ]
end
