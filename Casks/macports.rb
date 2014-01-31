class Macports < Cask
  if MacOS.version == :mavericks
    url 'https://distfiles.macports.org/MacPorts/MacPorts-2.2.1-10.9-Mavericks.pkg'
    sha1 'd72d69e2e024f03da3fc68a201fdf8548b392e97'
    install 'MacPorts-2.2.1-10.9-Mavericks.pkg'
  else
    url 'https://distfiles.macports.org/MacPorts/MacPorts-2.2.1-10.8-MountainLion.pkg'
    sha1 '25f81aa439623e3458d2f2867475944727c77a98'
    install 'MacPorts-2.2.1-10.8-MountainLion.pkg'
  end
  homepage 'http://www.macports.org'
  version '2.2.1'
end
