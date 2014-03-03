class Pdftk < Cask
  url 'http://www.pdflabs.com/tools/pdftk-the-pdf-toolkit/pdftk_server-2.02-mac_osx-10.6-setup.pkg'
  homepage 'http://www.pdflabs.com/tools/pdftk-server/'
  version '2.02'
  sha256 'c0679a7a12669480dd298c436b0e4d063966f95ed6a77b98d365bb8c86390d1b'
  install 'pdftk_server-2.02-mac_osx-10.6-setup.pkg'
  uninstall :script => '/opt/pdflabs/pdftk/bin/pdftk_uninstall.sh'
end
