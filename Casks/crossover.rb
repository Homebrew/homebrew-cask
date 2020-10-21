cask "crossover" do
  version "20.0.0"
  sha256 "50f0ed89ff7b111d193f8e6177e0959a60e4108321ef7bbab80b185967c612d2"

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
