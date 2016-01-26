cask 'imagealpha' do
  if MacOS.release <= :snow_leopard
    version '1.2.3'
    sha256 '79388edcaf5cb29234f722a672b069c6d51fb812e89969ba8db8e957b9a32bf3'
  else
    version '1.4.0'
    sha256 '7dc856013d5e5b8ecaa63dba2da8bd0db17de22ee60790e3b664898327727ed8'
    appcast 'https://pngmini.com/appcast.xml',
            checkpoint: '9988304aabf8f3ef81d3eb38856d733742de7ac5e48ff7ea5805ee1c541b480a'
  end

  url "https://pngmini.com/ImageAlpha#{version}.tar.bz2"
  name 'ImageAlpha'
  homepage 'https://pngmini.com/'
  license :gpl

  app 'ImageAlpha.app'
end
