cask "alt-tab" do
  version "6.28.0"
  sha256 "f86ecc32fe99e58a6dede0364ea3490caee878eac6788975bb4976944ab1e2f0"

  url "https://github.com/lwouis/alt-tab-macos/releases/download/v#{version}/AltTab-#{version}.zip"
  name "AltTab"
  desc "Windows alt-tab on macOS"
  homepage "https://github.com/lwouis/alt-tab-macos"

  livecheck do
    url :url
    strategy :github_latest
  end

  auto_updates true
  depends_on macos: ">= :sierra"

  app "AltTab.app"

  uninstall quit: "com.lwouis.alt-tab-macos"

  zap trash: [
    "~/Library/Application Support/com.lwouis.alt-tab-macos",
    "~/Library/Caches/com.lwouis.alt-tab-macos",
    "~/Library/Cookies/com.lwouis.alt-tab-macos.binarycookies",
    "~/Library/Preferences/com.lwouis.alt-tab-macos.plist",
    "~/Library/LaunchAgents/com.lwouis.alt-tab-macos.plist",
  ]
end
