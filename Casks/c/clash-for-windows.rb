cask "clash-for-windows" do
  arch arm: "-arm64"

  version "0.20.33"
  sha256 arm:   "2b914d29f689c2ca9bacff4f1a92aa74bd9b1dec70da3ab6132b0e9674f596cc",
         intel: "22fe7349c389e3895aa2f707eb1827a9c7dc8f77f817c1a8e307c42777c81326"

  url "https://github.com/Fndroid/clash_for_windows_pkg/releases/download/#{version}/Clash.for.Windows-#{version}#{arch}.dmg"
  name "Clash for Windows"
  desc "GUI based on Clash"
  homepage "https://github.com/Fndroid/clash_for_windows_pkg"

  livecheck do
    url :url
    strategy :github_latest
  end

  auto_updates true

  app "Clash for Windows.app"

  zap trash: [
    "~/Library/Application Support/clash_win",
    "~/Library/Logs/clash_win",
    "~/Library/Preferences/com.lbyczf.clashwin.plist",
  ]
end
