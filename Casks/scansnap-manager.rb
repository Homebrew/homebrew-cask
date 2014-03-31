class ScansnapManager < Cask
  url 'http://www.fujitsu.com/downloads/IMAGE/driver/ss/mgr/m-sv600/MacScanSnapV62L10WW.dmg'
  homepage 'http://www.fujitsu.com/global/support/computing/peripheral/scanners/software/'
  version '6.2L10'
  no_checksum
  install 'ScanSnap Manager.pkg'
  uninstall :pkgutil => 'jp.co.pfu.ScanSnap.*'
end
