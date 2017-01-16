cask 'plug' do
  if MacOS.version <= :mavericks
    version '0.10.5'
    sha256 'd8eed07bd1f84d6f1daa7a0699617f2e21c01df2e68924945bcb4889d1251d01'
    url "https://plugformac.com/files/Plug-#{version}.dmg"
  else
    version '2.0.17'
    sha256 'ecde912d29f83afa386f08dd86ba39a01f96d10d2d3693bb3e2b6415449069ee'
    url "https://www.plugformac.com/updates/plug#{version.major}/Plug-latest.dmg"
    appcast "https://www.plugformac.com/updates/plug#{version.major}/sparklecast.xml",
            checkpoint: '0611f580e5927da3b4de186008a74fd1429f14c95749a75c75e852a7683b5b05'
  end

  name 'Plug'
  homepage 'https://www.plugformac.com/'

  app 'Plug.app'
end
