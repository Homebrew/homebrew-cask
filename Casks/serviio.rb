cask 'serviio' do
  version '1.5.2'
  sha256 '22d266a9cabbfa168ce719a35ea87f373e4639d8a249e43a2a10b823022aca57'

  url "http://download.serviio.org/releases/serviio-#{version}-osx.tar.gz"
  name 'Serviio'
  homepage 'http://serviio.org/'
  license :commercial

  pkg "Serviio-#{version}.pkg"
end
