class NzbvortexHelper < Cask
  version :latest
  sha256 :no_check

  url 'http://nzbvortex.com/downloads/NZBVortexHelperInstaller.dmg'
  homepage 'http://nzbvortex.com/site/install-helper/'
  license :unknown

  installer :manual => 'NZBVortex Helper Installer.app'
end
