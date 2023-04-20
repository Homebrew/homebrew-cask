cask "clash-for-windows" do
  arch arm: "-arm64"

  version "0.20.21"
  sha256 arm:   "6ec2b4f3e7bfabe7adea41c78151f13a24d81efbba5fe70fe9389ebb700117b3",
         intel: "2f596f70bbf3a6b14fbdae9d12184ce769e1547c52c36174f6ee6dbb4722fb6c"

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
