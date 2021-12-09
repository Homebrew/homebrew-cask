cask "kap" do
  version "3.5.0"
  sha256 "7a07f1e064ac8c925fffce698abb64e771730eb09ba211cdc4c17346b06af73a"

  url "https://github.com/wulkano/kap/releases/download/v#{version.major_minor_patch}/Kap-#{version}.dmg",
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
