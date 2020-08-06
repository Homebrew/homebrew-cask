cask "alt-tab" do
  version "4.16.0"
  sha256 "e871d690e72910f6952bdb73ab30d1fbabec97f6bd4472e084c2f1cd5863386b"

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
