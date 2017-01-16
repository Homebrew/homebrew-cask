cask 'hewlettpackardprinterdrivers' do
  version '5.0'
  sha256 '02aba5aacbc812d995a3818a1b032f5b1e6aa124060ed5405f0e73d8be726667'

  url "http://support.apple.com/downloads/DL1888/en_US/hpprinterdrivers#{version}.dmg"
  name 'HP Printer Drivers'
  homepage 'https://support.apple.com/kb/DL1888'

  pkg 'HewlettPackardPrinterDrivers.pkg'

  uninstall pkgutil: [
                       'com.apple.pkg.HewlettPackardPrinterDrivers',
                       'com.apple.pkg.HewlettPackardPrinterDriversPreInstall',
                     ]
end
