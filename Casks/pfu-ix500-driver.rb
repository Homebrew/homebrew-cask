class PfuIx500Driver < Cask
  url 'http://www.pfu.jp/downloads/ix500/ScanSnap.dmg'
  homepage 'http://scansnap.fujitsu.com/jp/downloads/mgr/ix500.html'
  version '6.0'
  no_checksum
  install 'ScanSnap Manager.pkg'
end

