cask "alt-tab" do
  version "10.12.0"
  sha256 "e7aea75cf1dd30dba6b5a9ef50da03f389bc5db74089e67af9112938a4192c14"

  url "https://github.com/lwouis/alt-tab-macos/releases/download/v#{version}/AltTab-#{version}.zip",
      verified: "github.com/lwouis/alt-tab-macos/"
  name "AltTab"
  desc "Enable Windows-like alt-tab"
  homepage "https://alt-tab.app/"

  livecheck do
    url "https://alt-tab.app/appcast.xml"
    strategy :sparkle
  end

  auto_updates true

  app "AltTab.app"

  uninstall quit:       "com.lwouis.alt-tab-macos",
            on_upgrade: :quit

  zap trash: [
    "~/Library/Application Support/com.lwouis.alt-tab-macos",
    "~/Library/Caches/com.lwouis.alt-tab-macos",
    "~/Library/Cookies/com.lwouis.alt-tab-macos.binarycookies",
    "~/Library/HTTPStorages/com.lwouis.alt-tab-macos",
    "~/Library/LaunchAgents/com.lwouis.alt-tab-macos.plist",
    "~/Library/Preferences/com.lwouis.alt-tab-macos.plist",
  ]
end
