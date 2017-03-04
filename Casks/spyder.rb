cask 'spyder' do
  version '3.0.2'
  sha256 'bd9f3326be19b0de047cef296b0bd6222ae4b21b0a508c16cc2d42c1e170468e'

  # bitbucket.org/spyder-ide/ was verified as official when first introduced to the cask
  url "https://bitbucket.org/spyder-ide/spyderlib/downloads/spyder-#{version}-py3.5.dmg"
  appcast 'https://github.com/spyder-ide/spyder/releases.atom',
          checkpoint: '39a71e80aebab43f0b9ef10b96d32e79c3c4099f55419c77a05cb90740a95df1'
  name 'Spyder-Py3'
  homepage 'https://github.com/spyder-ide/spyder'

  app 'Spyder.app'
end
