cask "alt-tab" do
  version "4.17.1"
  sha256 "99f117db94f274b5e3f8133916ee4165509563343175bdda78b832f578e43c50"

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
