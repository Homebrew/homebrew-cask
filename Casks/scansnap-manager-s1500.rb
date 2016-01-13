cask 'scansnap-manager-s1500' do
  version :latest
  sha256 :no_check

  # pfultd.com is the official download host per the vendor homepage
  url 'http://origin.pfultd.com/downloads/IMAGE/driver/ss/mgr/m-s1500/MacS1500ManagerV32L80WW.dmg'
  name 'ScanSnap Manager for Fujitsu ScanSnap s1500'
  homepage 'https://www.fujitsu.com/global/support/products/computing/peripheral/scanners/scansnap/software/s1500.html'
  license :gratis

  depends_on :macos => '>= :lion'

  pkg 'ScanSnap Manager.pkg'

  uninstall :pkgutil => 'jp.co.pfu.ScanSnap.*'
end
