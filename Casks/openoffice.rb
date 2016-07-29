cask 'openoffice' do
  version '4.1.2'
  sha256 '4fe8e4b30989d0476fe3afc6d9d4374af57d38bd04f4a5e1947462bf5dde7699'

  # downloads.sourceforge.net/sourceforge/openofficeorg.mirror was verified as official when first introduced to the cask
  url "http://downloads.sourceforge.net/sourceforge/openofficeorg.mirror/Apache_OpenOffice_#{version}_MacOS_x86-64_install_en-US.dmg"
  name 'Apache OpenOffice'
  homepage 'https://www.openoffice.org/'
  license :apache

  app 'OpenOffice.app'

  zap delete: '~/Library/Application Support/OpenOffice'
end
