cask 'cookie' do
  version '5.0'
  sha256 'b377e682f31595f10396d9935aff3654e734aead055fc285670f118523673239'

  url 'https://sweetpproductions.com/products/cookie5/Cookie5.dmg'
  appcast 'https://sweetpproductions.com/products/cookie5/appcast.xml',
          checkpoint: 'c0218a439d4e913d89a893da09eccedd5c6c768644fedd5437eb5b8ddf12d9f4'
  name 'Cookie'
  homepage 'https://sweetpproductions.com/'
  license :commercial

  app 'Cookie.app'
end
