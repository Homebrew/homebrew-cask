cask "alt-tab" do
  version "6.53.1"
  sha256 "54117d0c95b70be5d2f97a1e813894ef071cba4973c6616dce5d6a77ae2df324"

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
