cask 'disk-drill' do
  version '3.0.756'
  sha256 '89e41a553b04719cc0bfa3c1113068ee87956f4dfa723c59c015eac1e7ac7e15'

  url "https://www.cleverfiles.com/releases/DiskDrill_#{version}.zip"
  appcast 'https://www.cleverfiles.com/releases/auto-update/dd2-newestr.xml',
          checkpoint: '69afe7db791c177298fe24c391dda37dcec5a9b8f1633ea14aecbc085f4b5a01'
  name 'Disk Drill'
  homepage 'https://www.cleverfiles.com/'

  app 'Disk Drill.app'

  uninstall delete: '/Library/Application Support/CleverFiles'

  zap delete: [
                '~/Library/Application Support/DiskDrill',
                '~/Library/Caches/com.cleverfiles.Disk_Drill',
                '~/Library/Logs/DiskDrill.log',
              ]
end
