cask "clash-for-windows" do
  arch arm: "-arm64"

  version "0.20.37"
  sha256 arm:   "416a6d1b193a79e37bee06cf3f5b61e1e4f930da6933a3eabff8275b4a887dad",
         intel: "57b2dc421b0b4b06762cbccc40f35d5ab79dcacbad716467e3f4a48fd5467e67"

  url "https://github.com/Fndroid/clash_for_windows_pkg/releases/download/#{version}/Clash.for.Windows-#{version}#{arch}.dmg"
  name "Clash for Windows"
  desc "GUI based on Clash"
  homepage "https://github.com/Fndroid/clash_for_windows_pkg"

  livecheck do
    url :url
    strategy :github_latest
  end

  auto_updates true
  depends_on macos: ">= :high_sierra"

  app "Clash for Windows.app"

  zap trash: [
    "~/Library/Application Support/clash_win",
    "~/Library/Logs/clash_win",
    "~/Library/Preferences/com.lbyczf.clashwin.plist",
  ]
end
