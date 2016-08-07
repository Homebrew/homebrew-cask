cask 'busycal' do
  version :latest
  sha256 :no_check

  url 'https://www.busymac.com/download/BusyCal.zip'
  name 'BusyCal'
  homepage 'https://busymac.com/busycal/index.html'
  license :commercial

  pkg 'BusyCal Installer.pkg'

  uninstall pkgutil: 'com.busymac.busycal2.pkg'
end
