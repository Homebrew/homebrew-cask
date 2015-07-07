cask :v1 => 'spyder' do
  version '2.3.4'
  sha256 'dbc71eb3c3952171fa37251ed441be80c525c47143626b4315f3775b8b4b1fed'

  # bitbucket.org is the official download host per the vendor homepage
  url "https://bitbucket.org/spyder-ide/spyderlib/downloads/spyder-#{version}-py2.7.dmg"
  name 'Spyder'
  homepage 'https://github.com/spyder-ide/spyder'
  license :mit

  app 'Spyder-Py2.app'
end
