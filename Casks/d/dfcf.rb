cask "dfcf" do
  version "3.8.2"
  sha256 :no_check

  url "https://swdlcdn.eastmoney.com/Mac/Macdownload/dfcf.dmg"
  name "East Money"
  name "东方财富"
  desc "Stock trading platform"
  homepage "https://emdesk.eastmoney.com/pc_activity/AHome/Index"

  disable! date: "2025-11-24", because: :discontinued

  app "东方财富.app"

  caveats do
    requires_rosetta
  end

  # No zap stanza required
end
