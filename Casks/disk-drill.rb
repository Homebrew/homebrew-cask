cask 'disk-drill' do
  version '3.5.882'
  sha256 '2d6f5133298f525fc6c74a7e3a23020376b9272f69619c33b9118ff6b30a75f2'

  url "https://www.cleverfiles.com/releases/DiskDrill_#{version}.zip"
  appcast 'https://www.cleverfiles.com/releases/auto-update/dd2-newestr.xml',
          checkpoint: 'efc0555178265223c0501acc6315fa6fa1db31c973c6f1b4add37b90c360cb3f'
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
