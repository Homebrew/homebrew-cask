cask 'plug' do
  if MacOS.version <= :mavericks
    version '0.10.5'
    sha256 'd8eed07bd1f84d6f1daa7a0699617f2e21c01df2e68924945bcb4889d1251d01'
    url "https://plugformac.com/files/Plug-#{version}.dmg"
  else
    version '2.0.14'
    sha256 'afab04697b729bf6fda4042b2292c2c84803d5d1cdf18a491d4025e699403240'
    url "https://www.plugformac.com/updates/plug#{version.major}/Plug-latest.dmg"
    appcast "https://www.plugformac.com/updates/plug#{version.major}/sparklecast.xml",
            checkpoint: '46430df9121b04a98a6ccb058ebbd97e4e396760c3cf70e5902b2c4acf95f88b'
  end

  name 'Plug'
  homepage 'https://www.plugformac.com/'

  app 'Plug.app'
end
