cask "alt-tab" do
  version "7.19.1"
  sha256 "793fc7643043b4e87db9011f7cb8650577d6b8f48cfdb9e9829e4e1674ae0819"

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
