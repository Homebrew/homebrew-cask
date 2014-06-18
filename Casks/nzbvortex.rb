class Nzbvortex < Cask
  url 'http://www.nzbvortex.com/downloads/NZBVortex.dmg'
  appcast 'http://www.nzbvortex.com/update/appcast.xml'
  homepage 'http://www.nzbvortex.com/'
  version 'latest'
  sha256 :no_check
  link 'NZBVortex.app'
end
