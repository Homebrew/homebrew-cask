cask :v1 => 'spyder' do
  version '2.3.6'
  sha256 'bceb41c323f8910f6e3ad113bd4adbb4d52e996602de146a482b12d57a7bdf82'

  # bitbucket.org is the official download host per the vendor homepage
  url "https://bitbucket.org/spyder-ide/spyderlib/downloads/spyder-#{version}-py2.7.dmg"
  name 'Spyder'
  homepage 'https://github.com/spyder-ide/spyder'
  license :mit

  app 'Spyder-Py2.app'
end
