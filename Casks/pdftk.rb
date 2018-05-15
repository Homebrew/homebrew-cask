cask 'pdftk' do
  version '2.02'
  sha256 'c33cf95151e477953cd57c1ea9c99ebdc29d75f4c9af0d5f947b385995750b0c'

  url 'https://www.pdflabs.com/tools/pdftk-the-pdf-toolkit/pdftk_server-2.02-mac_osx-10.11-setup.pkg'
  name 'PDFtk Server'
  homepage 'https://www.pdflabs.com/tools/pdftk-server'

  pkg 'pdftk_server-2.02-mac_osx-10.11-setup.pkg'

  uninstall pkgutil: 'com.pdflabs.pdftkThePdfToolkit.pdftk.pkg',
            delete: '/usr/local/bin/pdftk'
end
