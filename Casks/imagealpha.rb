cask 'imagealpha' do
  if MacOS.version <= :snow_leopard
    version '1.2.3'
    sha256 '79388edcaf5cb29234f722a672b069c6d51fb812e89969ba8db8e957b9a32bf3'
  else
    version '1.5.1'
    sha256 'be8a4544a2a855ba424e33819940b4b0ddb1221d1f46ca360181fd4ee2bef24b'
    appcast 'https://pngmini.com/appcast.xml',
            checkpoint: '76ca766570428cdd1ce9e69bb3c302c087d41226489c76fd6b9ea0c4e0594363'
  end

  url "https://pngmini.com/ImageAlpha#{version}.tar.bz2"
  name 'ImageAlpha'
  homepage 'https://pngmini.com/'

  app 'ImageAlpha.app'
end
