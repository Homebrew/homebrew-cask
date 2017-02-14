cask 'dropbox' do
  version '19.4.13'
  sha256 '22143fc23732c27a0fbc1e4c626bb7d32c847ccf5b5884789f592a73a33e8904'

  # clientupdates.dropboxstatic.com was verified as official when first introduced to the cask
  url "https://clientupdates.dropboxstatic.com/client/Dropbox%20#{version}.dmg"
  appcast 'https://www.dropbox.com/release_notes/rss.xml',
          checkpoint: '2794637a8b028d903f0d27432291dce968886923a86325994156cf1206edec80'
  name 'Dropbox'
  homepage 'https://www.dropbox.com/'

  auto_updates true

  app 'Dropbox.app'

  uninstall login_item: 'Dropbox'

  zap delete: [
                '~/.dropbox',
                '~/Library/Application Scripts/com.getdropbox.dropbox.garcon',
                '~/Library/Caches/CloudKit/com.apple.bird/iCloud.com.getdropbox.Dropbox',
                '~/Library/Caches/com.getdropbox.dropbox',
                '~/Library/Containers/com.getdropbox.dropbox.garcon',
                '~/Library/Group Containers/com.getdropbox.dropbox.garcon',
                '~/Library/Logs/Dropbox_debug.log',
                '/Library/DropboxHelperTools',
              ]
end
