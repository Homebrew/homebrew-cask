class Mosh < Cask
  url 'https://mosh.mit.edu/mosh-1.2.4-3.pkg'
  homepage 'http://mosh.mit.edu/'
  version '1.2.4'
  sha256 '0722cd2fe9a0084f1736ba415cf2bb8efeb6377c1b51079127a3e7c847ad85a1'
  install 'mosh-1.2.4-3.pkg'
  uninstall :pkgutil => 'edu.mit.mosh.mosh.pkg'
end
