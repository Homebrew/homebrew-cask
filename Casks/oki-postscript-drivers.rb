cask 'oki-postscript-drivers' do
  version '2.0.2'
  sha256 'b8d5058744d93d040433eb841dcd2481848e61b659e84da459785310044857fa'

  url 'http://belgium.oki.com/Includes/Pages/FileDownload.aspx?id=tcm:125-152412'
  name 'OKI MC860 PS Driver for OSX'
  homepage 'http://belgium.oki.com/support/printer/printer-drivers/detail.aspx?prodid=tcm:125-4613&driverid=tcm:125-152412-16'

  pkg 'OKI PostScript Driver.pkg'

  uninstall pkgutil: 'com.okidata.okiPostscriptDriver.OELnew.*'
end
