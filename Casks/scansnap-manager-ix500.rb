cask :v1 => 'scansnap-manager-ix500' do
  version :latest
  sha256 :no_check

  url 'http://origin.pfultd.com/downloads/IMAGE/driver/ss/mgr/m-ix500/ScanSnap.dmg'
  name 'ScanSnap Manager for Fujitsu ScanSnap iX500'
  homepage 'http://www.fujitsu.com/global/support/products/computing/peripheral/scanners/scansnap/software/ix500.html'
  license :gratis

  pkg 'ScanSnap Manager.pkg'

  uninstall :pkgutil => 'jp.co.pfu.ScanSnap.*'
  
  depends_on :macos => '>= :lion'
end
