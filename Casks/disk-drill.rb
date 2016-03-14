cask 'disk-drill' do
  version '2.4.438'
  sha256 'dc6c1feb0ab60e81e463b6f180e2a255d730d3a4ac71b65508e46ff79a4d355c'

  url "http://www.cleverfiles.com/releases/DiskDrill_#{version}.zip"
  appcast 'http://www.cleverfiles.com/releases/auto-update/dd2-newestr.xml',
          checkpoint: '2c71e60d055a132d96f3d23cec96c5b3318280c7ca6dc565317cae984441a01d'
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
