cask :v1 => 'geotag' do
  if MacOS.release <= :mountain_lion
    version '2.2'
    sha256 'c5553af3b37903b7e4f402d8c9fbeced63492295c6bdd25987dd70ab367c32e9'
  else
    version '3.5'
    sha256 'b8c46486502a90856087de7e637d73c6ce21db62cde2c1483d33e2e3e2da16d3'
  end

  url "http://www.snafu.org/GeoTag/GeoTag-#{version}.dmg"
  name 'GeoTag'
  homepage 'http://www.snafu.org/GeoTag/'
  license :cc

  app 'GeoTag.app'
end
