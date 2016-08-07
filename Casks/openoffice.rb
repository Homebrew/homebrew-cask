cask 'openoffice' do
  version '4.1.2'
  sha256 '4fe8e4b30989d0476fe3afc6d9d4374af57d38bd04f4a5e1947462bf5dde7699'

  # sourceforge.net/openofficeorg.mirror was verified as official when first introduced to the cask
  url "https://downloads.sourceforge.net/openofficeorg.mirror/Apache_OpenOffice_#{version}_MacOS_x86-64_install_en-US.dmg"
  appcast 'https://sourceforge.net/projects/openofficeorg.mirror/rss',
          checkpoint: '391656f2987abb760223ad7da9d186cc2bee9903e4b0d1c4cf686f8cc011a944'
  name 'Apache OpenOffice'
  homepage 'https://www.openoffice.org/'
  license :apache

  app 'OpenOffice.app'

  zap delete: '~/Library/Application Support/OpenOffice'
end
