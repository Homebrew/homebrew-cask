cask 'disk-drill' do
  version '3.0.748'
  sha256 'de7fe7c28e4fbdd51749f2695ffb0e087739113cc55ebe1c5835ad317b438c16'

  url "https://www.cleverfiles.com/releases/DiskDrill_#{version}.zip"
  appcast 'https://www.cleverfiles.com/releases/auto-update/dd2-newestr.xml',
          checkpoint: 'c52c1ad6d44d2fb5e83cd712e7af1a2fe1897c6c219f821aba9570ae56855da6'
  name 'Disk Drill'
  homepage 'https://www.cleverfiles.com/'
  license :freemium

  app 'Disk Drill.app'

  uninstall delete: '/Library/Application Support/CleverFiles'

  zap delete: [
                '~/Library/Application Support/DiskDrill',
                '~/Library/Caches/com.cleverfiles.Disk_Drill',
                '~/Library/Logs/DiskDrill.log',
              ]
end
