cask 'busycal' do
  version :latest
  sha256 :no_check

  url 'http://www.busymac.com/download/BusyCal.zip'
  name 'BusyCal'
  homepage 'http://busymac.com/busycal/index.html'
  license :commercial

  pkg 'BusyCal Installer.pkg'

  uninstall pkgutil: 'com.busymac.busycal2.pkg'
end
