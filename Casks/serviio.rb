cask 'serviio' do
  version '1.6.1'
  sha256 '3f5110543c1336eabce255f45aed28bd3b66b1752714e5826654df232b91e747'

  url "http://download.serviio.org/releases/serviio-#{version}-osx.tar.gz"
  name 'Serviio'
  homepage 'http://serviio.org/'

  pkg "Serviio-#{version}.pkg"
end
