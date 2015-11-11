cask :v1 => 'openoffice' do
  version '4.1.2'
  sha256 '4fe8e4b30989d0476fe3afc6d9d4374af57d38bd04f4a5e1947462bf5dde7699'

  # sourceforge.net is the official download host per the vendor homepage
  url "http://downloads.sourceforge.net/sourceforge/openofficeorg.mirror/Apache_OpenOffice_#{version}_MacOS_x86-64_install_en-US.dmg"
  name 'OpenOffice'
  homepage 'https://www.openoffice.org/'
  license :apache
  tags :vendor => 'Apache'

  app 'OpenOffice.app'

  zap :delete => '~/Library/Application Support/OpenOffice'
end
