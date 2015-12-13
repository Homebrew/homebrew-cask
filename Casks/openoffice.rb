cask :v1 => 'openoffice' do
  version '4.1.2'
  sha256 'cc6ca4ae4d10a295f5283ee8030da13c0110a439b164680de4fbdf5dfa926c19'

  # sourceforge.net is the official download host per the vendor homepage
  url "http://downloads.sourceforge.net/sourceforge/openofficeorg.mirror/Apache_OpenOffice_#{version}_MacOS_x86-64_install_en-US.dmg"
  name 'OpenOffice'
  homepage 'https://www.openoffice.org/'
  license :apache
  tags :vendor => 'Apache'

  app 'OpenOffice.app'

  zap :delete => '~/Library/Application Support/OpenOffice'
end
