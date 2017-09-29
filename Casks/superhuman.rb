cask 'superhuman' do
  version :latest
  sha256 :no_check

  url 'https://download.superhuman.com/Superhuman.dmg'
  name 'Superhuman'
  homepage 'https://superhuman.com/'

  app 'Superhuman.app'

  zap delete: '~/Library/Caches/Superhuman',
      trash:  [
                '~/Library/Application Support/Milanote',
                '~/Library/Preferences/io.nwjs.nwjs.plist',
              ]
end
