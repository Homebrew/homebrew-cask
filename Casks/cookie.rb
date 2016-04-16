cask 'cookie' do
  version '5.0'
  sha256 'b377e682f31595f10396d9935aff3654e734aead055fc285670f118523673239'

  url 'https://sweetpproductions.com/products/cookie5/Cookie5.dmg'
  appcast 'https://sweetpproductions.com/products/cookie/appcast.xml',
          checkpoint: 'eb19a184c68b0c976ee0aeb3f454b32246b3bc47a54564264356fe7a8a21d3d7'
  name 'Cookie'
  homepage 'https://sweetpproductions.com/'
  license :commercial

  app 'Cookie.app'
end
