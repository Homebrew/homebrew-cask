cask 'cups-pdf' do
  version '2.6.1'
  sha256 '24bf65884dda2d3fd60266f96bf76791a61ec9095f11073047d880de692784b9'

  # bitbucket.org is the official download host per the vendor homepage
  url "https://bitbucket.org/codepoet/cups-pdf-for-mac-os-x/downloads/CUPS-PDF%20#{version}%20Installer.pkg"
  name 'CUPS-PDF'
  homepage 'http://www.cups-pdf.de'
  license :gpl

  pkg "CUPS-PDF #{version} Installer.pkg"

  uninstall :pkgutil => 'net.codepoetry.cupspdf.*'
end
