cask "clash-for-windows" do
  arch arm: "-arm64"

  version "0.20.39"
  sha256 arm:   "479d9cef5932d70506592869b01e6e12a4c61411307c0d83615ba3f6c2b41631",
         intel: "5b6bec7cc143f4d95b6ed4d830b20347000aad06edb3d8e5e95daa97481d83af"

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
