cask 'superhuman' do
  version :latest
  sha256 :no_check

  url 'https://download.superhuman.com/Superhuman.dmg'
  name 'Superhuman'
  homepage 'https://superhuman.com/'

  app 'Superhuman.app'

  zap trash: [
               '~/Library/Application Support/Milanote',
               '~/Library/Caches/Superhuman',
               '~/Library/Preferences/io.nwjs.nwjs.plist',
             ]
end
