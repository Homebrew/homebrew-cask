cask "clash-for-windows" do
  arch arm: "-arm64"

  version "0.20.20"
  sha256 arm:   "e3ff0465298b0c90da7781e3d6d13f80039977045c00859a7bd493f6ebf33883",
         intel: "074dfe46dc9ee2a18e63988fe02bf7fd52ff4c994f55d392da20a53cd18f64e8"

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
