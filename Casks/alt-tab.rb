cask "alt-tab" do
  version "6.0.0"
  sha256 "a6c92bde6017152dc414e4e2740f8d1dc03ba4a4bb0edb3d6da52a77c83665b5"

  url "https://github.com/lwouis/alt-tab-macos/releases/download/v#{version}/AltTab-#{version}.zip"
  appcast "https://github.com/lwouis/alt-tab-macos/releases.atom"
  name "alt-tab"
  homepage "https://github.com/lwouis/alt-tab-macos"

  auto_updates true
  depends_on macos: ">= :sierra"

  app "AltTab.app"

  uninstall quit: "com.lwouis.alt-tab-macos"

  zap trash: [
    "~/Library/Caches/com.lwouis.alt-tab-macos",
    "~/Library/Cookies/com.lwouis.alt-tab-macos.binarycookies",
    "~/Library/Preferences/com.lwouis.alt-tab-macos.plist",
  ]
end
