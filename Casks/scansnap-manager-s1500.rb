cask 'scansnap-manager-s1500' do
  version '3.2L80'
  sha256 '62787d40c2e35d03dde2285ce74d461f33bfc47e1c673bbef04d1029e922fab6'

  # pfultd.com is the official download host per the vendor homepage
  url 'http://origin.pfultd.com/downloads/IMAGE/driver/ss/mgr/m-s1500/MacS1500ManagerV32L80WW.dmg'
  name 'ScanSnap Manager for Fujitsu ScanSnap S1500'
  homepage 'http://www.fujitsu.com/global/support/products/computing/peripheral/scanners/scansnap/software/s1500m-setup.html'
  license :gratis

  depends_on macos: '>= :lion'

  pkg 'ScanSnap Manager.pkg'

  uninstall pkgutil: 'jp.co.pfu.ScansublSnap.*'
end
