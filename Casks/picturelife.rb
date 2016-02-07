cask 'picturelife' do
  version :latest
  sha256 :no_check

  url 'https://www.streamnation.com/uploader/osx/picturelife/Picturelife.dmg'
  name 'Picturelife Smartloader'
  homepage 'https://picturelife.com/home'
  license :gratis

  app 'Picturelife.app'

  uninstall quit: ['com.picturelife.sync']

  zap delete: [
                '~/Library/Preferences/com.picturelife.sync.plist',
                '~/Library/Application Support/Picturelife',
                '~/Library/Caches/com.picturelife.sync',
                '~/Desktop/Drop to Picturelife',
              ]
end
