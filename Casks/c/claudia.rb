cask "claudia" do
  version "0.1.0"
  sha256 "8552718841f7d24ede793c8b2b258a8f6cdcd004895f482b1da5ee26d2f105eb"

  url "https://github.com/getasterisk/claudia/releases/download/v#{version}/Claudia_v#{version}_macOS_universal.dmg"
  name "Claudia"
  desc "GUI app and toolkit for Claude Code"
  homepage "https://github.com/getasterisk/claudia"

  livecheck do
    url :url
    strategy :github_tags
  end

  auto_updates true
  depends_on macos: ">= :catalina"

  app "Claudia.app"

  uninstall quit: "claudia.asterisk.so"

  zap trash: [
    "~/Library/Application Support/Claudia",
    "~/Library/Logs/Claudia",
    "~/Library/Preferences/claudia.asterisk.so.plist",
    "~/Library/Saved Application State/claudia.asterisk.so.savedState",
  ]
end
