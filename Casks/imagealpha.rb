cask 'imagealpha' do
  if MacOS.release <= :snow_leopard
    version '1.2.3'
    sha256 '79388edcaf5cb29234f722a672b069c6d51fb812e89969ba8db8e957b9a32bf3'
  else
    version '1.4.0'
    sha256 '7dc856013d5e5b8ecaa63dba2da8bd0db17de22ee60790e3b664898327727ed8'
    appcast 'https://pngmini.com/appcast.xml',
            :sha256 => 'd35e98c25df03bb1e4e8068993ee5f5c0292f02e4faa51793e5601c3b95ef634'
  end

  url "https://pngmini.com/ImageAlpha#{version}.tar.bz2"
  name 'ImageAlpha'
  homepage 'https://pngmini.com/'
  license :gpl

  app 'ImageAlpha.app'
end
