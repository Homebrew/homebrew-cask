cask 'disk-drill' do
  version '3.1.817'
  sha256 '2f609974da8580963c1607cc5835f965f1646b6c3d1a73025d49a6d900b75bfb'

  url "https://www.cleverfiles.com/releases/DiskDrill_#{version}.zip"
  appcast 'https://www.cleverfiles.com/releases/auto-update/dd2-newestr.xml',
          checkpoint: '1e4a01bfd4470f4441f9dab0f220635c921083685e12cd9bc21cb5abb18681f3'
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
