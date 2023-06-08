cask "clash-for-windows" do
  arch arm: "-arm64"

  version "0.20.25"
  sha256 arm:   "b473d9c687a5ae84441026fe0b4f15ac0f47d3d5c7333202714d3ee2ec16f8d1",
         intel: "3f178039bb47f7f0816359bc00176903e4f2267bc0f537a8a074bfef06fed8f8"

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
