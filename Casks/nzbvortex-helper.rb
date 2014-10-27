class NzbvortexHelper < Cask
  version :latest
  sha256 :no_check

  url 'http://nzbvortex.com/downloads/NZBVortexHelperInstaller.dmg'
  homepage 'http://nzbvortex.com/site/install-helper/'
  license :unknown

  installer :manual => 'NZBVortex Helper Installer.app'
  
  uninstall :quit => 'com.NZBVortex.NZBVortex-Helper',
            :delete => [
              '~/Library/Application Support/NZBVortex Helper',
              '~/Library/Caches/com.NZBVortex.NZBVortex-Helper',
              '~/Library/Preferences/com.NZBVortex.NZBVortex-Helper.plist',
            ]
end
