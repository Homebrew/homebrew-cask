cask "dupscanub" do
  version "2.4.1"
  sha256 "d9c318d017012266461c8705bb9f9ebe23f052b4e794ace950f7edee8836f614"

  url "http://www5.wind.ne.jp/miko/mac_soft/dup_scan/hqx/DupScanUB_#{version.no_dots}.dmg.zip"
  name "DupScan"
  desc "Searches for duplicated files in specified folders"
  homepage "http://www5.wind.ne.jp/miko/mac_soft/dup_scan/"

  livecheck do
    url :homepage
    strategy :page_match do |page|
      match = page.match(%r{href=.*?/DupScanUB_(\d+)(\d+)(\d+).dmg\.zip}i)
      "#{match[1]}.#{match[2]}.#{match[3]}"
    end
  end

  app "DupScan(UB).app"
end
