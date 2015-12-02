cask :v1 => 'spyder' do
  version '2.3.7'
  sha256 '014086c5a1ca676efef9de46d97a8fe68f2d7a24a5517c36def429be7692b6fc'

  # bitbucket.org is the official download host per the vendor homepage
  url "https://bitbucket.org/spyder-ide/spyderlib/downloads/spyder-#{version}-py3.4.dmg"
  name 'Spyder'
  name 'Spyder-Py3'
  homepage 'https://github.com/spyder-ide/spyder'
  license :mit

  app 'Spyder.app'
end
