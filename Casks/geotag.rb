cask :v1 => 'geotag' do
  if MacOS.release <= :mountain_lion
    version '2.2'
    sha256 'c5553af3b37903b7e4f402d8c9fbeced63492295c6bdd25987dd70ab367c32e9'
  else
    version '3.4.4'
    sha256 '987380bf59e4465bf2ab65b04711114abda493e9b78cb26d25e4e4c903004225'
  end

  url "http://www.snafu.org/GeoTag/GeoTag-#{version}.dmg"
  name 'GeoTag'
  homepage 'http://www.snafu.org/GeoTag/'
  license :unknown

  app 'GeoTag.app'
end
