cask "crossover" do
  version "20.0.1"
  sha256 "39997e6796bb61d05964339546282b79ca3b143ed76bf775c35ca921ca84c422"

  url "https://media.codeweavers.com/pub/crossover/cxmac/demo/crossover-#{version}.zip"
  appcast "https://www.codeweavers.com/xml/versions/cxmac.xml"
  name "CrossOver"
  desc "Tool to run Windows software"
  homepage "https://www.codeweavers.com/products/crossover-mac/"

  app "CrossOver.app"

  zap trash: [
    "~/Library/Caches/com.apple.helpd/Generated/CrossOver Help*",
    "~/Library/Caches/Cleanup At Startup/CrossOver CD Helper.app",
    "~/Library/Caches/com.codeweavers.CrossOver",
    "~/Library/Saved Application State/com.codeweavers.CrossOverHelper*",
    "~/Library/Logs/CrossOver",
    "~/Library/Preferences/com.codeweavers.*",
    "~/Library/Application Support/CrossOver",
  ]
end
