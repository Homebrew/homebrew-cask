cask 'imagealpha' do
  if MacOS.release <= :snow_leopard
    version '1.2.3'
    sha256 '79388edcaf5cb29234f722a672b069c6d51fb812e89969ba8db8e957b9a32bf3'
  else
    version '1.5.0'
    sha256 'f0e06109d7348f41bc0fa9c62caac997b9601777f23f1fd522efdea2188ccf54'
    appcast 'https://pngmini.com/appcast.xml',
            checkpoint: '09bfb1631ef1024e04c78fccae8fb50bfabbb113304e442d6fc5c156b494b686'
  end

  url "https://pngmini.com/ImageAlpha#{version}.tar.bz2"
  name 'ImageAlpha'
  homepage 'https://pngmini.com/'
  license :gpl

  app 'ImageAlpha.app'
end
