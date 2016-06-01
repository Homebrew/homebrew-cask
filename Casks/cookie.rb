cask 'cookie' do
  version '5.0.8'
  sha256 '39507c5e8d63def19e57b66c1e95eaa92c4b59c5619a1641292788697784c564'

  url 'https://sweetpproductions.com/products/cookie5/Cookie5.zip'
  appcast 'https://sweetpproductions.com/products/cookie5/appcast.xml',
          checkpoint: '585e29b6e2cd3552b1b5958dfab6bc607e07f133d7098734b5bbad425b0a85a3'
  name 'Cookie'
  homepage 'https://sweetpproductions.com/'
  license :commercial

  app 'Cookie.app'
end
