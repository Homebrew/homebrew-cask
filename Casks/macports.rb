class Macports < Cask
  version '2.3.2'

  if MacOS.version < :mavericks
    sha256 'd10bf4a27f89709501e1370d7d80f415eaf16bae23fd9ff3d4e96f86afdf8cd6'
    url "https://distfiles.macports.org/MacPorts/MacPorts-#{version}-10.8-MountainLion.pkg"
    pkg "MacPorts-#{version}-10.8-MountainLion.pkg"
  elsif MacOS.version < :yosemite
    sha256 '2df01bf88e1e3de32ada0f42a8a46fb992093baee62f9d911fa3ae3ee895d471'
    url "https://distfiles.macports.org/MacPorts/MacPorts-#{version}-10.9-Mavericks.pkg"
    pkg "MacPorts-#{version}-10.9-Mavericks.pkg"
  else
    sha256 '70a5b06600136f69a24c86ffaf7c4a86303e42ec4e447182cdda1cf2cf6f8a87'
    url "https://distfiles.macports.org/MacPorts/MacPorts-#{version}-10.10-Yosemite.pkg"
    pkg "MacPorts-#{version}-10.10-Yosemite.pkg"
  end

  gpg "#{url}.asc",
      :key_id => '01ff673fb4aae6cd'
  homepage 'http://www.macports.org'
  license :unknown

  uninstall :pkgutil => 'org.macports.MacPorts'
  zap       :delete  => '~/.macports'
end
