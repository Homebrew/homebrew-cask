cask 'disk-drill' do
  version '3.5.883'
  sha256 '1eb24662f729f29c5b21210e24d7c6b55e182c5e2a53b6b2bed02e8573f52746'

  url "https://www.cleverfiles.com/releases/DiskDrill_#{version}.zip"
  appcast 'https://www.cleverfiles.com/releases/auto-update/dd2-newestr.xml',
          checkpoint: 'beaf6374680821cbeecc577846cf2e2e7816bacf8912cb9811567beab21434f0'
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
