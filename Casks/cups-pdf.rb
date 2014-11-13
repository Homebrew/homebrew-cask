cask :v1 => 'cups-pdf' do
  version '2.6.1'
  sha256 '24bf65884dda2d3fd60266f96bf76791a61ec9095f11073047d880de692784b9'

  url "https://bitbucket.org/codepoet/cups-pdf-for-mac-os-x/downloads/CUPS-PDF%20#{version}%20Installer.pkg"
  homepage 'http://www.cups-pdf.de'
  license :gpl

  pkg "CUPS-PDF #{version} Installer.pkg"

  uninstall :pkgutil => 'net.codepoetry.cupspdf.*'
end
