cask 'rest-time' do
  version '1.03'
  sha256 '1c9a70f780fad700b1fd58d63a82200c777da4d47ed6a112a0ee484a0e585acd'

  url 'http://www.publicspace.net/download/RestTime.dmg'
  appcast 'http://www.publicspace.net/app/resttime.xml',
          checkpoint: 'ff19a758a930721474ef4120e27cf4b8755443c6ea803ff48f3aa404860d8323'
  name 'Rest Time'
  homepage 'http://www.publicspace.net/RestTime/'

  auto_updates true

  app 'Rest Time.app'

  zap delete: '~/Library/Caches/net.publicspace.resttime',
      trash:  '~/Library/Preferences/net.publicspace.resttime.plist'
end
