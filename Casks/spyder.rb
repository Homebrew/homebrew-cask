cask :v1 => 'spyder' do
  version '2.3.1'
  sha256 '4e5a755a98da444343d52d8ae3273eb3dd36c1114e12f0b77de6ade387477a81'

  url "https://bitbucket.org/spyder-ide/spyderlib/downloads/spyder-#{version}-py27.dmg"
  homepage 'https://code.google.com/p/spyderlib/'
  license :oss

  app 'Spyder.app'
end
