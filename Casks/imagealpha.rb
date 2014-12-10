cask :v1 => 'imagealpha' do

  if MacOS.version <= :snow_leopard
    version '1.2.3'
    sha256 '79388edcaf5cb29234f722a672b069c6d51fb812e89969ba8db8e957b9a32bf3'
  else
    version '1.3.5'
    sha256 'ba1ca1f50fa5b2a3472e6c2dbe410ecc3a66f425975cf9e39380e5c3421cca49'
    appcast 'http://pngmini.com/appcast.xml',
            :sha256 => '0144b9560a5a4b8cb4d73af95df04bfbc136cd3c53f6aef14a76212b211a8b2c'
  end

  url "http://pngmini.com/ImageAlpha#{version}.tar.bz2"
  homepage 'http://pngmini.com/'
  license :unknown    # todo: improve this machine-generated value

  app 'ImageAlpha.app'
end
