class Logic < Cask
  url 'http://downloads.saleae.com/Logic%201.1.15%20(10.5%2B).pkg'
  homepage 'http://www.saleae.com/'
  version '1.1.15'
  sha256 '1c37d6809bfb6daec88a7a34c6f056b93179c2471385f5e7be4d4271995995b1'
  install 'Logic 1.1.15 (10.5+).pkg'
  uninstall :pkgutil => 'com.saleae.saleae.Logic.pkg'
end
