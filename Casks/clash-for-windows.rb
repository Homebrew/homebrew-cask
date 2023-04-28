cask "clash-for-windows" do
  arch arm: "-arm64"

  version "0.20.22"
  sha256 arm:   "ac9e31f10023bf5ba9934527c690f88bf8c251838b7fac203fd65063aafe2593",
         intel: "ae151bd5daa8de25a1de14cce353701fa6140747c9dae0d10599b94f80501382"

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
