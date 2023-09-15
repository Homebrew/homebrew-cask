cask "clash-for-windows" do
  arch arm: "-arm64"

  version "0.20.35"
  sha256 arm:   "fe737950e96c9b6fc61e169a2a9d4099013144846c129c1ddd105870112a7c6d",
         intel: "2f65bdead085b6e1b0607ba3c924ef484848ff4ecf4ad97017acef8fa9d30af8"

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
