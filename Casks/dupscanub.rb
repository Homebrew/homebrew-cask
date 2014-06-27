class Dupscanub < Cask
  version '2.4.1'
  sha256 'd9c318d017012266461c8705bb9f9ebe23f052b4e794ace950f7edee8836f614'

  url 'http://www5.wind.ne.jp/miko/mac_soft/dup_scan/hqx/DupScanUB_241.dmg.zip'
  homepage 'http://www5.wind.ne.jp/miko/mac_soft/dup_scan/index.html'

  nested_container 'DupScanUB_241.dmg'
  link 'DupScan(UB).app'
end
