cask "alt-tab" do
  version "5.0.0"
  sha256 "59355d9437d632200b4310c2ae52b8ec83f21f84aba0b29037aeb6e605db35ce"

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
