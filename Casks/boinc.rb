cask :v1 => 'boinc' do
  version '7.6.12'
  sha256 '194c91040807d995a5f54574c207d12b8970008319e146abb8fcfa13f75e39c6'

  url "http://boinc.berkeley.edu/dl/boinc_#{version}_macOSX_x86_64.zip"
  name 'Berkeley Open Infrastructure for Network Computing (BOINC)'
  homepage 'https://boinc.berkeley.edu/'
  license :gpl
  installer :script => "boinc_#{version}_macOSX_x86_64/BOINC Installer.app/Contents/MacOS/BOINC Installer"
  uninstall :pkgutil => 'edu.berkeley.boinc'
end
