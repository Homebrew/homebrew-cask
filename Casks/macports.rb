class Macports < Cask
  if MacOS.version < :mavericks
    url 'https://distfiles.macports.org/MacPorts/MacPorts-2.2.1-10.8-MountainLion.pkg'
    sha256 'd10bf4a27f89709501e1370d7d80f415eaf16bae23fd9ff3d4e96f86afdf8cd6'
    install 'MacPorts-2.2.1-10.8-MountainLion.pkg'
  else
    url 'https://distfiles.macports.org/MacPorts/MacPorts-2.2.1-10.9-Mavericks.pkg'
    sha256 '2df01bf88e1e3de32ada0f42a8a46fb992093baee62f9d911fa3ae3ee895d471'
    install 'MacPorts-2.2.1-10.9-Mavericks.pkg'
  end
  homepage 'http://www.macports.org'
  version '2.2.1'
  uninstall :pkgutil => 'org.macports.MacPorts'
end
