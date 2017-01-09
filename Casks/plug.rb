cask 'plug' do
  if MacOS.version <= :mavericks
    version '0.10.5'
    sha256 'd8eed07bd1f84d6f1daa7a0699617f2e21c01df2e68924945bcb4889d1251d01'
    url "https://plugformac.com/files/Plug-#{version}.dmg"
  else
    version '2.0.16'
    sha256 'c545efe302d082f9f771c0d764372c0bb159f876961bc6f0632a69bc978139fb'
    url "https://www.plugformac.com/updates/plug#{version.major}/Plug-latest.dmg"
    appcast "https://www.plugformac.com/updates/plug#{version.major}/sparklecast.xml",
            checkpoint: 'b63b3b926e84f60ef9af93d6fffdae156f977b23300cb3c8b6c938fd30800d03'
  end

  name 'Plug'
  homepage 'https://www.plugformac.com/'

  app 'Plug.app'
end
