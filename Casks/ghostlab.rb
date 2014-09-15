class Ghostlab < Cask
  version 'latest'
  sha256 :no_check

  url 'http://awesome.vanamco.com/downloads/ghostlab/Ghostlab.dmg'
  appcast 'http://awesome.vanamco.com/update/ghostlab-cast.xml'
  homepage 'http://vanamco.com/ghostlab/'

  app 'Ghostlab.app'
end
