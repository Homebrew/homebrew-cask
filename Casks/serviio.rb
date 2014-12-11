cask :v1 => 'serviio' do
  version '1.4.1.2'
  sha256 '132ed6ba9baf466eec5d89789cd8d50163fa5b534899f10a9232e00f711707aa'

  url "http://download.serviio.org/releases/serviio-#{version}-osx.tar.gz"
  homepage 'http://serviio.org/'
  license :unknown    # todo: improve this machine-generated value

  app 'Serviio.app'
  app 'Serviio-Console.app'
end
