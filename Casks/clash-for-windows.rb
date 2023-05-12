cask "clash-for-windows" do
  arch arm: "-arm64"

  version "0.20.23"
  sha256 arm:   "8e8532c986bfa84e53f0ccc118e0277271467b42f2a955b786f43b660cb7c2ee",
         intel: "d8c4ba528f4d8748419b1e247304c7bb81bd05579c2b52b9261ddbbc07c6eff3"

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
