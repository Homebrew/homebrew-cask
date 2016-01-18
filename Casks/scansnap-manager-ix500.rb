cask 'scansnap-manager-ix500' do
  version :latest
  sha256 :no_check

  # pfultd.com is the official download host per the vendor homepage
  url 'http://origin.pfultd.com/downloads/IMAGE/driver/ss/mgr/m-ix500/ScanSnap.dmg'
  name 'ScanSnap Manager for Fujitsu ScanSnap iX500'
  homepage 'https://www.fujitsu.com/global/support/products/computing/peripheral/scanners/scansnap/software/ix500.html'
  license :gratis

  depends_on macos: '>= :lion'

  pkg 'ScanSnap Manager.pkg'

  uninstall pkgutil: 'jp.co.pfu.ScanSnap.*'
end
