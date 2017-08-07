cask 'roger' do
  version :latest
  sha256 :no_check

  url 'http://api.useroger.com/download'
  name 'Roger'
  homepage 'http://www.useroger.com/'

  app 'Roger.app'

  uninstall login_item: 'Roger',
            quit:       'com.placepixel.Roger'

  zap delete: '~/Library/Caches/com.placepixel.Roger',
      trash:  [
                '~/Library/Preferences/com.placepixel.Roger.plist',
                '~/Library/Application Support/com.placepixel.Roger',
              ]
end
