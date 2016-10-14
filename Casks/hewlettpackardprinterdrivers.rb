cask 'hewlettpackardprinterdrivers' do
  version '3.1'
  sha256 'd8b618878b1949496197e31ee4b8d36b50ad6169cc5acef8c1cb1917e6b4200b'

  url "https://support.apple.com/downloads/DL907/en_US/hpprinterdriver#{version}.dmg"
  name 'HP Printer Drivers'
  homepage 'https://support.apple.com/kb/DL907'

  pkg 'HewlettPackardPrinterDrivers.pkg'

  uninstall pkgutil: [
                       'com.apple.pkg.HewlettPackardPrinterDrivers',
                       'com.apple.pkg.HewlettPackardPrinterDriversPreInstall',
                     ]
end
