cask 'dropbox' do
  version '11.4.20'
  sha256 '61267a63616308bf9dd59db8c38298f25b9ea302bcbc57a1451f71c5dee2e905'

  # clientupdates.dropboxstatic.com/client was verified as official when first introduced to the cask
  url "https://clientupdates.dropboxstatic.com/client/Dropbox%20#{version}.dmg"
  name 'Dropbox'
  homepage 'https://www.dropbox.com/'
  license :gratis

  auto_updates true

  app 'Dropbox.app'

  uninstall login_item: 'Dropbox'

  zap delete: [
                '~/.dropbox',
                '~/Library/Caches/com.getdropbox.dropbox',
                '~/Library/Containers/com.getdropbox.dropbox.garcon',
                '~/Library/Group Containers/com.getdropbox.dropbox.garcon',
                '/Library/DropboxHelperTools',
              ]
end
