cask 'spyder' do
  version '2.3.8'
  sha256 '03bbdb9e2dc753d663b70ff3ac2190d5141099e58744465378f07597c81067be'

  # bitbucket.org/spyder-ide/ was verified as official when first introduced to the cask
  url "https://bitbucket.org/spyder-ide/spyderlib/downloads/spyder-#{version}-py3.5.dmg"
  appcast 'https://github.com/spyder-ide/spyder/releases.atom',
          checkpoint: 'cb54582f0a53c1226fa89099b928c7137f8465a66bac39c750e8b4b7714faca3'
  name 'Spyder-Py3'
  homepage 'https://github.com/spyder-ide/spyder'
  license :mit

  app 'Spyder.app'
end
