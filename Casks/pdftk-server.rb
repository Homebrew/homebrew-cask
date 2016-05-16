cask 'pdftk-server' do
  version '2.02'
  sha256 'c0679a7a12669480dd298c436b0e4d063966f95ed6a77b98d365bb8c86390d1b'

  url "https://www.pdflabs.com/tools/pdftk-the-pdf-toolkit/pdftk_server-#{version}-mac_osx-10.6-setup.pkg"
  name 'PDFtk Server'
  homepage 'https://www.pdflabs.com/tools/pdftk-server/'
  license :gpl

  pkg "pdftk_server-#{version}-mac_osx-10.6-setup.pkg"

  uninstall pkgutil: 'com.pdflabs.pdftkThePdfToolkit.pdftk.pkg',
            delete: '/opt/pdflabs/pdftk'
end
