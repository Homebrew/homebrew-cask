cask 'serviio' do
  version '1.7.1.1'
  sha256 'ffd6b06f09f20da059248181352f21d6c2104239fe86546ad7073f15282e92fc'

  url "http://download.serviio.org/releases/serviio-#{version}-osx.tar.gz"
  name 'Serviio'
  homepage 'http://serviio.org/'

  pkg "Serviio-#{version}.pkg"
end
