cask :v1 => 'logic' do
  version '1.1.15'
  sha256 '1c37d6809bfb6daec88a7a34c6f056b93179c2471385f5e7be4d4271995995b1'

  url "http://downloads.saleae.com/Logic%20#{version}%20(10.5%2B).pkg"
  homepage 'http://www.saleae.com/'
  license :unknown

  pkg "Logic #{version} (10.5+).pkg"

  uninstall :pkgutil => 'com.saleae.saleae.Logic.pkg'
end
