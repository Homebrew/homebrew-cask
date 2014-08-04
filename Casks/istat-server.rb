class IstatServer < Cask
  version 'latest'
  sha256 :no_check

  url 'http://download.bjango.com/istatserver/'
  homepage 'http://bjango.com/mac/istatserver/'

  install 'iStat Server.pkg'
  uninstall :script => '/Applications/iStat Server.app/Contents/Resources/Uninstaller',
            :pkgutil => 'com.bjango.istatserver.*'
  caveats do
    reboot
  end
end
