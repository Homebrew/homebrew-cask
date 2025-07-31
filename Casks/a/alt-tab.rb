cask "alt-tab" do
  version "7.26.0"
  sha256 "b43cbe185670f610f691e94f3898a846f7266cf67d6d0bbe2110c110e6a6b09b"

  url "https://github.com/lwouis/alt-tab-macos/releases/download/v#{version}/AltTab-#{version}.zip",
      verified: "github.com/lwouis/alt-tab-macos/"
  name "AltTab"
  desc "Enable Windows-like alt-tab"
  homepage "https://alt-tab-macos.netlify.app/"

  livecheck do
    url "https://raw.githubusercontent.com/lwouis/alt-tab-macos/master/appcast.xml"
    strategy :sparkle
  end

  auto_updates true
  depends_on macos: ">= :sierra"

  app "AltTab.app"

  uninstall quit: "com.lwouis.alt-tab-macos"

  zap trash: [
    "~/Library/Application Support/com.lwouis.alt-tab-macos",
    "~/Library/Caches/com.lwouis.alt-tab-macos",
    "~/Library/Cookies/com.lwouis.alt-tab-macos.binarycookies",
    "~/Library/HTTPStorages/com.lwouis.alt-tab-macos",
    "~/Library/LaunchAgents/com.lwouis.alt-tab-macos.plist",
    "~/Library/Preferences/com.lwouis.alt-tab-macos.plist",
  ]
end
