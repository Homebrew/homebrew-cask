cask :v1 => 'spyder' do
  version '2.3.2'
  sha256 '37f64cdc31381368458b9c33c90f7c3cd5baf866a9525d3c7e4f962e7c2e2810'

  url "https://bitbucket.org/spyder-ide/spyderlib/downloads/spyder-#{version}-py2.7.dmg"
  homepage 'https://code.google.com/p/spyderlib/'
  license :oss

  app 'Spyder-Py2.app'
end
