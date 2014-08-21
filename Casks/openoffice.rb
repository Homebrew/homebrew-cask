class Openoffice < Cask
  version '4.1.1'
  sha256 '7becbdbe2abbcfd9d27953d2e11dc07da308d80f208b5f27f6213d225dc95e64'

  url "https://downloads.sourceforge.net/project/openofficeorg.mirror/#{version}/binaries/en-US/Apache_OpenOffice_#{version}_MacOS_x86-64_install_en-US.dmg"
  homepage 'http://www.openoffice.org/'

  link 'OpenOffice.app'
end
