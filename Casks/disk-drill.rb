cask 'disk-drill' do
  version '3.5.872'
  sha256 'c0a1a698e848e51697e93283e65bb56485196ce620bebf84315fb832cef5f3d1'

  url "https://www.cleverfiles.com/releases/DiskDrill_#{version}.zip"
  appcast 'https://www.cleverfiles.com/releases/auto-update/dd2-newestr.xml',
          checkpoint: 'bebaaf67cf9038b1907cec61cdddcd2eb5cde04cbaae650cca2b5aefc819e6e2'
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
