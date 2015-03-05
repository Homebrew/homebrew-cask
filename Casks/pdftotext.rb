cask :v1_1 => 'pdftotext' do
  version :latest
  sha256 :no_check

  url 'http://www.bluem.net/files/pdftotext.dmg'
  name 'pdftotext'
  homepage 'http://www.bluem.net/en/mac/packages/'
  license :gpl

  pkg 'Installer.pkg'

  uninstall :pkgutil => 'net.bluem.pdftotext.pkg'

  caveats do
    discontinued
  end
end
