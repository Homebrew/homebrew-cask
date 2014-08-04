class CupsPdf < Cask
  version '2.5.0'
  sha256 'a51a44dfb2f12fd6a291a94dcd863690c8246f6d66e10d74b0a30c1b67b080f7'

  url 'https://bitbucket.org/codepoet/cups-pdf-for-mac-os-x/downloads/CUPS-PDF%202.5.0%20Installer.zip'
  homepage 'http://www.cups-pdf.de'

  install 'CUPS-PDF.mpkg'
  uninstall :pkgutil => 'net.codepoetry.cupspdf.*pkg'
end
