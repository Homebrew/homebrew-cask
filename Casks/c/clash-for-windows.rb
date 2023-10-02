cask "clash-for-windows" do
  arch arm: "-arm64"

  version "0.20.36"
  sha256 arm:   "ca5fcdfee79d5def836e5ee1c35fe590ce4df0bab9f264303fa109fcead1fc47",
         intel: "0fb190f5dfbec0a2b5160e3826b00845e340fa60f419e65c9defcb646d09f2e6"

  url "https://github.com/Fndroid/clash_for_windows_pkg/releases/download/#{version}/Clash.for.Windows-#{version}#{arch}.dmg"
  name "Clash for Windows"
  desc "GUI based on Clash"
  homepage "https://github.com/Fndroid/clash_for_windows_pkg"

  livecheck do
    url :url
    strategy :github_latest
  end

  auto_updates true
  depends_on macos: ">= :high_sierra"

  app "Clash for Windows.app"

  zap trash: [
    "~/Library/Application Support/clash_win",
    "~/Library/Logs/clash_win",
    "~/Library/Preferences/com.lbyczf.clashwin.plist",
  ]
end
