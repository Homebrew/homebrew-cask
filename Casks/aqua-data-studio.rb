cask :v1 => 'aqua-data-studio' do
  version '15.0.14'
  sha256 '49f0fa90f43e67da2641befc6431df61e755200353faaaad1ab4f39fe1e000d4'

  url "http://www.aquafold.com/download/v15.0.0/osx/ads-osx-#{version}.tar.gz"
  name 'Aqua Data Studio'
  homepage 'http://www.aquafold.com/aquadatastudio.html'
  license :commercial
  tags :vendor => 'Aquafold'

  app 'Aqua Data Studio.app'
end
