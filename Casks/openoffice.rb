cask :v1 => 'openoffice' do
  version '4.1.1'
  sha256 '7becbdbe2abbcfd9d27953d2e11dc07da308d80f208b5f27f6213d225dc95e64'

  # sourceforge.net is the official download host per the vendor homepage
  url "http://downloads.sourceforge.net/sourceforge/openofficeorg.mirror/Apache_OpenOffice_#{version}_MacOS_x86-64_install_en-US.dmg"
  name 'OpenOffice'
  homepage 'https://www.openoffice.org/'
  license :apache
  tags :vendor => 'Apache'

  app 'OpenOffice.app'
end
