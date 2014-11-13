cask :v1 => 'mosh' do
  version '1.2.4'
  sha256 '0722cd2fe9a0084f1736ba415cf2bb8efeb6377c1b51079127a3e7c847ad85a1'

  url "https://mosh.mit.edu/mosh-#{version}-3.pkg"
  homepage 'http://mosh.mit.edu/'
  license :unknown

  pkg "mosh-#{version}-3.pkg"
  uninstall :pkgutil => 'edu.mit.mosh.mosh.pkg'
end
