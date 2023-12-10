cask "plus42-decimal" do
  version "1.1.2a"
  sha256 :no_check

  url "https://thomasokken.com/plus42/download/Plus42Mac.zip"
  name "Plus42 Decimal"
  desc "RPN calculator based on HP-42S"
  homepage "https://thomasokken.com/plus42/"

  livecheck do
    url "https://thomasokken.com/plus42/history.html"
    regex(/:\s*release\s*(\d+(?:\.\d+)+[a-z]?)\s*(?:$|\([^\n)]*MacOS)/i)
  end

  app "Plus42 Decimal.app"

  zap trash: [
    "~/Library/Application Support/Plus42",
    "~/Library/Caches/com.thomasokken.Plus42",
    "~/Library/HTTPStorages/com.thomasokken.Plus42",
    "~/Library/HTTPStorages/com.thomasokken.Plus42.binarycookies",
    "~/Library/Preferences/com.thomasokken.Plus42.plist",
    "~/Library/Saved Application State/com.thomasokken.Plus42",
  ]
end
