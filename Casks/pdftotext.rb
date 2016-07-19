cask 'pdftotext' do
  version :latest
  sha256 :no_check

  url 'https://www.bluem.net/files/pdftotext.dmg'
  name 'pdftotext'
  homepage 'http://www.bluem.net/en/mac/'
  license :gpl

  pkg 'Installer.pkg'

  uninstall pkgutil: 'net.bluem.pdftotext.pkg'

  caveats do
    discontinued
  end
end
