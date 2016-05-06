cask 'scansnap-manager-ix100' do
  version '6.3L50'
  sha256 '7d05a68eea763f8c25ee14db715a665a9bf2a8becd4c03b5541095a4bc218e9a'

  # pfultd.com is the official download host per the vendor homepage
  url "http://origin.pfultd.com/downloads/IMAGE/driver/ss/mgr/m-ix100/MaciX100ManagerV#{version.gsub('.', '')}WW1.dmg"
  name 'ScanSnap Manager for Fujitsu ScanSnap iX100'
  homepage 'https://www.fujitsu.com/global/support/products/computing/peripheral/scanners/scansnap/software/ix100.html'
  license :gratis

  depends_on macos: '>= :lion'

  pkg 'ScanSnap Manager.pkg'

  uninstall pkgutil: 'jp.co.pfu.ScanSnap.*'
end
