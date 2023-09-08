cask "clash-for-windows" do
  arch arm: "-arm64"

  version "0.20.34"
  sha256 arm:   "11ad90ef4077f7223cf34585926c4c6a2960f4155d0626de9d8a46e0877bc9c9",
         intel: "12891283b563b3d50b87244627fa247f23415545fac5bd2441232d623c84516c"

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
