cask "alt-tab" do
  version "6.26.0"
  sha256 "7ed7eaa1f67716707a59df0169d3f0709050c087b6273cfa347875e3dfaa19c9"

  url "https://github.com/lwouis/alt-tab-macos/releases/download/v#{version}/AltTab-#{version}.zip"
  name "alt-tab"
  desc "Utility to set up alt-tab to switch between windows"
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
    "~/Library/Preferences/com.lwouis.alt-tab-macos.plist",
  ]
end
