cask 'disk-drill' do
  version '3.1.804'
  sha256 'cc233eeb8053884a9d3676f8fa4ee3bb58e1bd2e33eccb556ad9da2acd62988c'

  url "https://www.cleverfiles.com/releases/DiskDrill_#{version}.zip"
  appcast 'https://www.cleverfiles.com/releases/auto-update/dd2-newestr.xml',
          checkpoint: 'a2ee6f305348e2e941d79d49d85f40e55578af09a7776e7401d3671abc92123b'
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
