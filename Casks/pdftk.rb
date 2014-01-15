class Pdftk < Cask
  url 'http://www.pdflabs.com/tools/pdftk-the-pdf-toolkit/pdftk_server-2.02-mac_osx-10.6-setup.pkg'
  homepage 'http://www.pdflabs.com/tools/pdftk-server/'
  version '2.02'
  sha1 '93226ecef996d7ad833a773ee15f9b62365fb567'
  install 'pdftk_server-2.02-mac_osx-10.6-setup.pkg'
  uninstall :script => '/opt/pdflabs/pdftk/bin/pdftk_uninstall.sh'
end
