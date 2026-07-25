cask "crossover" do
  version "26.3.0"
  sha256 "8688e0848c4e5f79f1cc351cb52d32447da00c6c00cfd3b4bb2d164d44589a26"

  url "https://media.codeweavers.com/pub/crossover/cxmac/demo/crossover-#{version}.zip"
  name "CrossOver"
  desc "Tool to run Windows software"
  homepage "https://www.codeweavers.com/products/crossover-mac/"

  livecheck do
    url "https://www.codeweavers.com/xml/versions/cxmac.xml"
    strategy :sparkle, &:short_version
  end

  auto_updates true
  depends_on :macos

  app "CrossOver.app"

  zap trash: [
    "~/Applications/CrossOver",
    "~/Library/Application Support/CrashReporter/CrossOver*",
    "~/Library/Application Support/CrossOver",
    "~/Library/Caches/Cleanup At Startup/CrossOver CD Helper.app",
    "~/Library/Caches/com.apple.helpd/Generated/CrossOver Help*",
    "~/Library/Caches/com.codeweavers.CrossOver",
    "~/Library/Caches/CrossOver",
    "~/Library/Cookies/com.codeweavers.CrossOver.binarycookies",
    "~/Library/HTTPStorages/com.codeweavers.CrossOver*",
    "~/Library/Logs/CrossOver",
    "~/Library/Logs/DiagnosticReports/CrossOver*",
    "~/Library/Preferences/com.codeweavers.*",
    "~/Library/Saved Application State/com.codeweavers.CrossOver*",
  ]
end
