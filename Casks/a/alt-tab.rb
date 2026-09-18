cask "alt-tab" do
  version "11.7.0"
  sha256 "3c6a13db8325b6a730b5578f0862dc60c4cb28b2fb7fd4144a790bf02bac9a9f"

  url "https://github.com/lwouis/alt-tab-macos/releases/download/v#{version}/AltTab-#{version}.zip"
  name "AltTab"
  desc "Enable Windows-like alt-tab"
  homepage "https://alt-tab.app/"

  livecheck do
    url "https://alt-tab.app/appcast.xml"
    strategy :sparkle
  end

  auto_updates true
  depends_on macos: :monterey

  app "AltTab.app"

  uninstall quit: "com.lwouis.alt-tab-macos"

  zap trash: [
    "~/Library/Application Support/com.lwouis.alt-tab-macos",
    "~/Library/Caches/com.lwouis.alt-tab-macos",
    "~/Library/Caches/com.plausiblelabs.crashreporter.data/com.lwouis.alt-tab-macos",
    "~/Library/Cookies/com.lwouis.alt-tab-macos.binarycookies",
    "~/Library/HTTPStorages/com.lwouis.alt-tab-macos",
    "~/Library/HTTPStorages/com.lwouis.alt-tab-macos.binarycookies",
    "~/Library/LaunchAgents/com.lwouis.alt-tab-macos.plist",
    "~/Library/Preferences/com.lwouis.alt-tab-macos.license.plist",
    "~/Library/Preferences/com.lwouis.alt-tab-macos.plist",
    "~/Library/Preferences/com.lwouis.alt-tab-macos.usage.plist",
  ]
end
