cask 'dropbox' do
  version '17.4.33'
  sha256 'f3b47bae67994522df1ca017570bf8bb0516e389bc29eb547345a9d4807ed571'

  # clientupdates.dropboxstatic.com was verified as official when first introduced to the cask
  url "https://clientupdates.dropboxstatic.com/client/Dropbox%20#{version}.dmg"
  appcast 'https://www.dropbox.com/release_notes/rss.xml',
          checkpoint: '8ff3fbcd6b128f85c7b530010b8b42e24aba486303e976552f0ed975af077abf'
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
