cask "free42-decimal" do
  version "3.0.3"
  sha256 :no_check

  url "https://thomasokken.com/free42/download/Free42Mac.zip"
  name "Free42 Decimal"
  desc "HP-42S calculator simulator"
  homepage "https://thomasokken.com/free42/"

  livecheck do
    url "https://thomasokken.com/free42/history.html"
    strategy :page_match
    regex(/release\s*(\d+(?:\.\d+)*)/i)
  end

  app "Free42 Decimal.app"

  zap trash: [
    "~/Library/Application Support/Free42",
    "~/Library/Preferences/com.thomasokken.Free42.plist",
    "~/Library/Caches/com.thomasokken.Free42",
  ]
end
