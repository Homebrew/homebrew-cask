cask "alt-tab" do
  version "6.32.0"
  sha256 "747f944819a55df17da72e15109dc9bda1e4dc517c13b214fefa8f8f2e19b64a"

  url "https://github.com/lwouis/alt-tab-macos/releases/download/v#{version}/AltTab-#{version}.zip"
  name "AltTab"
  desc "Enable Windows-like alt-tab"
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
    "~/Library/LaunchAgents/com.lwouis.alt-tab-macos.plist",
    "~/Library/Preferences/com.lwouis.alt-tab-macos.plist",
  ]
end
