cask "clash-for-windows" do
  arch arm: "-arm64"

  version "0.20.28"
  sha256 arm:   "3b3bd584e5d8a7712e3e045f950d41f1c2d5272f638483efc1388dab12e0fb3a",
         intel: "415078c30bde615e2921e0a1a8ad37f0f8986820eaf5d72022a491818a39caf2"

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
