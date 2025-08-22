cask "claudia" do
  version "0.1.0"
  sha256 "95c943d7e4e3073123e1e6c5c046b6380f19c4b1635a754363108a1a82a0aacd"

  url "https://github.com/getasterisk/claudia/releases/download/v#{version}/Claudia_v#{version}_macOS_universal.dmg"
  name "Claudia"
  desc "GUI app and toolkit for Claude Code"
  homepage "https://github.com/getasterisk/claudia"

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
