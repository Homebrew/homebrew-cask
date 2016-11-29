cask 'spyder' do
  version '2.3.8'
  sha256 '03bbdb9e2dc753d663b70ff3ac2190d5141099e58744465378f07597c81067be'

  # bitbucket.org/spyder-ide/ was verified as official when first introduced to the cask
  url "https://bitbucket.org/spyder-ide/spyderlib/downloads/spyder-#{version}-py3.5.dmg"
  appcast 'https://github.com/spyder-ide/spyder/releases.atom',
          checkpoint: 'b4b7ce3814df1fa1f3f9a3bf2ee33df9e5d486c051ef2049177a325f56d0986d'
  name 'Spyder-Py3'
  homepage 'https://github.com/spyder-ide/spyder'

  app 'Spyder.app'
end
