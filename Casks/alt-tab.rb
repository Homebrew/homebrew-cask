cask "alt-tab" do
  version "4.15.0"
  sha256 "0705a2b51194fa4e15f25fad9f439748a46047c060287ea0cfabf3f5028c01f7"

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
