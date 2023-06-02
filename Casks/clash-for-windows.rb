cask "clash-for-windows" do
  arch arm: "-arm64"

  version "0.20.24"
  sha256 arm:   "16b0407e0f8f0de1109a80ec9daba495160cf64828fedd2357d06105af045730",
         intel: "eca0a2d9ea8d7f5949ae6e59138189cbd6cb90fadcc001da87b1b52e742b11da"

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
