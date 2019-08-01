cask 'disk-drill' do
  version '3.7.934'
  sha256 'ff9258f14907078ebb692c746cce909c5620f4cd04da353e44155279aaa322d7'

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
