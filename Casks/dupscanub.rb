cask :v1 => 'dupscanub' do
  version '2.4.1'
  sha256 'd9c318d017012266461c8705bb9f9ebe23f052b4e794ace950f7edee8836f614'

  url "http://www5.wind.ne.jp/miko/mac_soft/dup_scan/hqx/DupScanUB_#{version.gsub('.','')}.dmg.zip"
  name 'DupScan'
  homepage 'http://www5.wind.ne.jp/miko/mac_soft/dup_scan/'
  license :unknown    # todo: change license and remove this comment; ':unknown' is a machine-generated placeholder

  container :nested => 'DupScanUB_241.dmg'
  app 'DupScan(UB).app'
end
