cask 'spyder' do
  version '2.3.8'
  sha256 '03bbdb9e2dc753d663b70ff3ac2190d5141099e58744465378f07597c81067be'

  # bitbucket.org is the official download host per the vendor homepage
  url "https://bitbucket.org/spyder-ide/spyderlib/downloads/spyder-#{version}-py3.5.dmg"
  name 'Spyder'
  name 'Spyder-Py3'
  homepage 'https://github.com/spyder-ide/spyder'
  license :mit

  app 'Spyder.app'
end
