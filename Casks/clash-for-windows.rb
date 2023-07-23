cask "clash-for-windows" do
  arch arm: "-arm64"

  version "0.20.30"
  sha256 arm:   "eaca429ec176a1cd06416c382792924141b1bc04690448325ba46216640975e6",
         intel: "22ec6bd8f41c07351a800014be8d55187e1f91b349417125dde7e6b20c9e8f0d"

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
