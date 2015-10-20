cask :v1 => 'imagealpha' do

  if MacOS.release <= :snow_leopard
    version '1.2.3'
    sha256 '79388edcaf5cb29234f722a672b069c6d51fb812e89969ba8db8e957b9a32bf3'
  else
    version '1.4.0'
    sha256 '7dc856013d5e5b8ecaa63dba2da8bd0db17de22ee60790e3b664898327727ed8'
    appcast 'http://pngmini.com/appcast.xml',
            :sha256 => '6586efef537dc200f439a265d1daee36ef4af08c43c81e4a56fcd4fae088ddbb'
  end

  url "http://pngmini.com/ImageAlpha#{version}.tar.bz2"
  name 'ImageAlpha'
  homepage 'http://pngmini.com/'
  license :gpl

  app 'ImageAlpha.app'
end
