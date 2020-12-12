cask "crossover" do
  version "20.0.2"
  sha256 "3bdae0c3647266f6b40d2e5db7862d1054ff940d80c6306d3be3d0b7153ed689"

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
