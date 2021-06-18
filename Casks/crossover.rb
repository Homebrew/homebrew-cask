cask "crossover" do
  version "20.0.4.33196"
  sha256 "739a977881e2b7969cf9aa044214da2747a798869c65bd383dbdf1aa269903dc"

  url "https://media.codeweavers.com/pub/crossover/cxmac/demo/crossover-#{version.major_minor_patch}.zip"
  name "CrossOver"
  desc "Tool to run Windows software"
  homepage "https://www.codeweavers.com/products/crossover-mac/"

  livecheck do
    url "https://www.codeweavers.com/xml/versions/cxmac.xml"
    strategy :sparkle
  end

  depends_on macos: "<= :big_sur"

  app "CrossOver.app"

  zap trash: [
    "~/Library/Application Support/CrashReporter/CrossOver*",
    "~/Library/Application Support/CrossOver",
    "~/Library/Caches/Cleanup At Startup/CrossOver CD Helper.app",
    "~/Library/Caches/com.apple.helpd/Generated/CrossOver Help*",
    "~/Library/Caches/com.codeweavers.CrossOver",
    "~/Library/Cookies/com.codeweavers.CrossOver.binarycookies",
    "~/Library/HTTPStorages/com.codeweavers.CrossOver.binarycookies",
    "~/Library/Logs/CrossOver",
    "~/Library/Logs/DiagnosticReports/CrossOver*",
    "~/Library/Preferences/com.codeweavers.*",
    "~/Library/Saved Application State/com.codeweavers.CrossOver*",
  ]
end
