cask 'plug' do
  if MacOS.version <= :mavericks
    version '0.10.5'
    sha256 'd8eed07bd1f84d6f1daa7a0699617f2e21c01df2e68924945bcb4889d1251d01'
    url "https://plugformac.com/files/Plug-#{version}.dmg"
  else
    version '2.0.18'
    sha256 'bd5063d851c6a09ceb3d22c8419b8e3df80bc1aa1e3c3ada73ec97be8561ccdd'
    url "https://www.plugformac.com/updates/plug#{version.major}/Plug-latest.dmg"
    appcast "https://www.plugformac.com/updates/plug#{version.major}/sparklecast.xml"
  end

  name 'Plug'
  homepage 'https://www.plugformac.com/'

  app 'Plug.app'
end
