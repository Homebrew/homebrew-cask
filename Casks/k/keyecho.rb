cask "keyecho" do
  arch arm: "aarch64", intel: "x64"

  version "1.2.0"
  sha256 arm:   "72b1590a5478d45e00689ecb61459edff40160c1849249ee5cf97e1523099e7e",
         intel: "7a3169508c5fefef76c38fd9b3b1d927e628f8e56484089d63f7ae7add71bba4"

  url "https://github.com/ZacharyL2/KeyEcho/releases/download/v#{version}/KeyEcho_#{version}_#{arch}.dmg"
  name "KeyEcho"
  desc "Mechanical keyboard sounds for every keystroke"
  homepage "https://keyecho.app/"

  auto_updates true
  depends_on :macos

  app "KeyEcho.app"

  uninstall launchctl: "KeyEcho"

  zap trash: [
    "~/Library/Application Support/app.keyecho.keyecho",
    "~/Library/Caches/app.keyecho.keyecho",
    "~/Library/LaunchAgents/KeyEcho.plist",
    "~/Library/WebKit/app.keyecho.keyecho",
  ]
end
