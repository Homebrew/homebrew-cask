cask 'pdftk-server' do
  version '2.02'
  sha256 'c0679a7a12669480dd298c436b0e4d063966f95ed6a77b98d365bb8c86390d1b'

  url 'https://www.pdflabs.com/tools/pdftk-the-pdf-toolkit/pdftk_server-2.02-mac_osx-10.6-setup.pkg'
  name 'PDFTK Server'
  homepage 'https://www.pdflabs.com/tools/pdftk-server/'

  pkg 'pdftk_server-2.02-mac_osx-10.6-setup.pkg'

  postflight do
    # Restore group write permission after the PKG installer sets 0755 on /usr/local/bin
    FileUtils.chmod 'g+w', '/usr/local/bin'
  end

  uninstall pkgutil: 'com.pdflabs.pdftkThePdfToolkit.pdftk.pkg'
end
