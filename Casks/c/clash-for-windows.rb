cask "clash-for-windows" do
  arch arm: "-arm64"

  version "0.20.31"
  sha256 arm:   "a20e9e6280b2d9c45692d563cfe728c748813144f1925da409b723d69d261d69",
         intel: "019ad036136620f7aa4716a101acb660d6fe8e4d3313c07a56974661cee6f60c"

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
