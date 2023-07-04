cask "clash-for-windows" do
  arch arm: "-arm64"

  version "0.20.27"
  sha256 arm:   "f3ecf1d27508b439346a1abacc900ec490c78a7fda30477f216429beba45234f",
         intel: "2187a6042d35bbd61c57a4b6c10eacd90a129ce53f82fc98c72e9f9bb00e3f71"

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
