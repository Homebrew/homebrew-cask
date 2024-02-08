cask "dupscanub" do
  version "2.4.1"
  sha256 "d9c318d017012266461c8705bb9f9ebe23f052b4e794ace950f7edee8836f614"

  url "http://www5.wind.ne.jp/miko/mac_soft/dup_scan/hqx/DupScanUB_#{version.no_dots}.dmg.zip"
  name "DupScan"
  desc "Searches for duplicated files in specified folders"
  homepage "http://www5.wind.ne.jp/miko/mac_soft/dup_scan/"

  livecheck do
    url :homepage
    regex(%r{href=.*?/DupScanUB_(\d+)(\d+)(\d+).dmg\.zip}i)
    strategy :page_match do |page, regex|
      page.scan(regex).map { |match| "#{match[0]}.#{match[1]}.#{match[2]}" }
    end
  end

  app "DupScan(UB).app"
end
