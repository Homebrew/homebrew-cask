cask :v1 => 'spyder' do
  version '2.3.5.2'
  sha256 '38c783b4f4ff83eee5a2ea9bf7a72b49cfc99252e8a7ad8e526621770d7b2c46'

  # bitbucket.org is the official download host per the vendor homepage
  url "https://bitbucket.org/spyder-ide/spyderlib/downloads/spyder-#{version}-py2.7.dmg"
  name 'Spyder'
  homepage 'https://github.com/spyder-ide/spyder'
  license :mit

  app 'Spyder-Py2.app'
end
