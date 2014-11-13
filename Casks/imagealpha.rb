cask :v1 => 'imagealpha' do
  version '1.3.5'
  sha256 'ba1ca1f50fa5b2a3472e6c2dbe410ecc3a66f425975cf9e39380e5c3421cca49'

  url "http://pngmini.com/ImageAlpha#{version}.tar.bz2"
  appcast 'http://pngmini.com/appcast.xml',
          :sha256 => '0144b9560a5a4b8cb4d73af95df04bfbc136cd3c53f6aef14a76212b211a8b2c'
  homepage 'http://pngmini.com/'
  license :unknown

  app 'ImageAlpha.app'
end
