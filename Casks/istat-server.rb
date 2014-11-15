cask :v1 => 'istat-server' do
  version :latest
  sha256 :no_check

  url 'http://download.bjango.com/istatserver/'
  homepage 'http://bjango.com/mac/istatserver/'
  license :unknown

  pkg 'iStat Server.pkg'
  uninstall :script => '/Applications/iStat Server.app/Contents/Resources/Uninstaller',
            :pkgutil => 'com.bjango.istatserver.*'
  caveats do
    reboot
  end
end
