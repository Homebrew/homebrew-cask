cask "dfcf" do
  version "3.7.8"
  sha256 :no_check

  url "https://swdlcdn.eastmoney.com/Mac/Macdownload/dfcf.dmg"
  name "East Money"
  name "东方财富"
  desc "Stock trading platform"
  homepage "https://emdesk.eastmoney.com/pc_activity/AHome/Index"

  livecheck do
    url :url
    strategy :extract_plist do |item|
      item["com.emmac.mac"]&.short_version
    end
  end

  app "东方财富.app"

  caveats do
    requires_rosetta
  end

  # No zap stanza required
end
