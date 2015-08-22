cask :v1 => 'scansnap-manager-ix500' do
  version :latest
  sha256 :no_check

  # pfultd.com is the official download host per the vendor homepage
  url 'http://www.pfu.jp/downloads/ix500/MacScanSnapV62L22JP.dmg'
  name 'ScanSnap Manager for Fujitsu ScanSnap iX500'
  homepage 'https://www.fujitsu.com/global/support/products/computing/peripheral/scanners/scansnap/software/ix500.html'
  license :gratis
  tags :vendor => 'Fujitsu'

  pkg 'ScanSnap Manager.pkg'

  uninstall :pkgutil => 'jp.co.pfu.ScanSnap.*'

  depends_on :macos => '>= :lion'
end
