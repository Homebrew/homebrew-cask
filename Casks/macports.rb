class Macports < Cask
  version '2.2.1'

  if MacOS.version < :mavericks
    sha256 'd10bf4a27f89709501e1370d7d80f415eaf16bae23fd9ff3d4e96f86afdf8cd6'
    url "https://distfiles.macports.org/MacPorts/MacPorts-#{version}-10.8-MountainLion.pkg"
    pkg "MacPorts-#{version}-10.8-MountainLion.pkg"
  else
    sha256 '2df01bf88e1e3de32ada0f42a8a46fb992093baee62f9d911fa3ae3ee895d471'
    url "https://distfiles.macports.org/MacPorts/MacPorts-#{version}-10.9-Mavericks.pkg"
    pkg "MacPorts-#{version}-10.9-Mavericks.pkg"
  end

  homepage 'http://www.macports.org'
  license :unknown

  uninstall :pkgutil => 'org.macports.MacPorts'
end
