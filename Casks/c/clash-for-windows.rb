cask "clash-for-windows" do
  arch arm: "-arm64"

  version "0.20.38"
  sha256 arm:   "a854177c7dde8b91d72f34bb7e93eca22a111ef0fd3dbb4b646608a4a746d0a4",
         intel: "5f779993265d46795356710e09f084a1b37341a6460bdb7734de15e7637f1239"

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
