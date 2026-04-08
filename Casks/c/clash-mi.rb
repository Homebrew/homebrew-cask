cask "clash-mi" do
  version "1.0.20.607"
  sha256 "6a76b4bdb31d202c79749fea2a576bc1274fa46402105a74f15bf2edd33c92fe"

  url "https://github.com/KaringX/clashmi/releases/download/v#{version}/clashmi_#{version}_macos_universal.dmg"
  name "Clash Mi"
  desc "Another Mihomo GUI based on Flutter"
  homepage "https://github.com/KaringX/clashmi"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on macos: ">= :monterey"

  app "Clash Mi.app"

  zap trash: [
    "~/Library/Application Support/clashmi",
    "~/Library/Caches/com.nebula.clashmi",
    "~/Library/Preferences/com.nebula.clashmi.plist",
    "~/Library/Saved Application State/com.nebula.clashmi.savedState",
    "~/Library/WebKit/com.nebula.clashmi",
  ]
end
