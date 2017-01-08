cask 'plug' do
  if MacOS.version <= :mavericks
    version '0.10.5'
    sha256 'd8eed07bd1f84d6f1daa7a0699617f2e21c01df2e68924945bcb4889d1251d01'
    url "https://plugformac.com/files/Plug-#{version}.dmg"
  else
    version '2.0.15'
    sha256 'e1a1e3fcfe7aeb5319833f407396cebaa27f5e3a01f3f904e622697c4093167e'
    url "https://www.plugformac.com/updates/plug#{version.major}/Plug-latest.dmg"
    appcast "https://www.plugformac.com/updates/plug#{version.major}/sparklecast.xml",
            checkpoint: '9ec6a8e0979e3e23bc1facf217ac2f9d868e512ecd25abfa20e5300556e05f62'
  end

  name 'Plug'
  homepage 'https://www.plugformac.com/'

  app 'Plug.app'
end
