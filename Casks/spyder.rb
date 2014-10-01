class Spyder < Cask
  version '2.3.0'
  sha256 '1a665fffc14c04647716da6a4108b152e983603ff7fd99680bafa915e361f27e'

  url "https://bitbucket.org/spyder-ide/spyderlib/downloads/spyder-#{version}.dmg"
  homepage 'https://code.google.com/p/spyderlib/'
  license :oss

  app 'Spyder.app'
end
