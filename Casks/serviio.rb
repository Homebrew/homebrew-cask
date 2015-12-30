cask 'serviio' do
  version '1.5.2'
  sha256 '89a52f2bf6f90d4c174e2af938cdab7db9b3ef42eb1078d6ab10a1299573f4bb'

  url "http://download.serviio.org/releases/serviio-#{version}-osx.tar.gz"
  name 'Serviio'
  homepage 'http://serviio.org/'
  license :commercial

  pkg "Serviio-#{version}.pkg"
end
