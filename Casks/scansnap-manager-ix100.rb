cask :v1 => 'scansnap-manager-ix100' do
  version '6.3L32'
  sha256 'd00c23c350a9bcd5032c520234647f67dbe972c6a5ba8291ab19b40c4379091f'

  # pfultd.com is the official download host per the vendor homepage
  url "http://origin.pfultd.com/downloads/IMAGE/driver/ss/mgr/m-ix100/MaciX100ManagerV#{version.gsub('.','')}WW1.dmg"
  name 'ScanSnap Manager for Fujitsu ScanSnap iX100'
  homepage 'https://www.fujitsu.com/global/support/products/computing/peripheral/scanners/scansnap/software/ix100.html'
  license :gratis
  tags :vendor => 'Fujitsu'

  pkg 'ScanSnap Manager.pkg'

  uninstall :pkgutil => 'jp.co.pfu.ScanSnap.*'

  depends_on :macos => '>= :lion'
end
