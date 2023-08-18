cask "clash-for-windows" do
  arch arm: "-arm64"

  version "0.20.32"
  sha256 arm:   "5606ea55131220606ec428d429b4f53162866f6b93afa4efdc99c6c8d839fe7a",
         intel: "25aa70191306528dc41efecd8f977b7560fa27adbea884073dbf68db3b8d50d7"

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
