cask "kap" do
  arch arm: "arm64", intel: "x64"

  version "3.6.0"
  sha256 arm:   "0f4b69d5fd4ec59da7b6e153722314c93dc263db2b81c0d0191e256360473ce3",
         intel: "8086dd10963177b878bdc709081e4efbbc713baeacb64d962bcd081bd0bf780f"

  url "https://github.com/wulkano/kap/releases/download/v#{version.major_minor_patch}/Kap-#{version}-#{arch}.dmg",
      verified: "github.com/wulkano/kap/"
  name "Kap"
  desc "Open-source screen recorder built with web technology"
  homepage "https://getkap.co/"

  auto_updates true
  depends_on macos: ">= :sierra"

  app "Kap.app"

  zap trash: [
    "~/Library/Application Support/Kap",
    "~/Library/Caches/com.wulkano.kap",
    "~/Library/Caches/com.wulkano.kap.ShipIt",
    "~/Library/Cookies/com.wulkano.kap.binarycookies",
    "~/Library/Preferences/com.wulkano.kap.helper.plist",
    "~/Library/Preferences/com.wulkano.kap.plist",
    "~/Library/Saved Application State/com.wulkano.kap.savedState",
  ]
end
