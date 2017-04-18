cask 'openoffice-pt-br' do
  version '4.1.2'
  sha256 '1c5b48ea7bbe0bff839bc391ca7c74f5f7ab68291b99614b40a7e640e386f9eb'

  # sourceforge.net is the official download host per the vendor homepage
  url "http://downloads.sourceforge.net/sourceforge/openofficeorg.mirror/Apache_OpenOffice_#{version}_MacOS_x86-64_install_pt-BR.dmg"
  name 'Apache OpenOffice'
  homepage 'https://www.openoffice.org/'
  license :apache

  app 'OpenOffice.app'

  zap delete: '~/Library/Application Support/OpenOffice'
end
