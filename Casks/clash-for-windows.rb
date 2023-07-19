cask "clash-for-windows" do
  arch arm: "-arm64"

  version "0.20.29"
  sha256 arm:   "58f780abf159365030dd197456992923d1bce7b4265e056c36a25a25f9dd1d91",
         intel: "6f750b082e32a91269312663d6b3bf2bbb86c1c80e083352c4b236bc0033f31c"

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
