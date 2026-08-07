cask "remanager" do
  version "1.7.0"
  sha256 "32808526e5c914d6dac7e7bc704370397691360ffd1c7405fee7db1653925d04"

  url "https://github.com/rmitchellscott/reManager/releases/download/v#{version}/reManager-macos-universal.zip"
  name "reManager"
  desc "Desktop app for managing mods on reMarkable tablets"
  homepage "https://github.com/rmitchellscott/reManager"

  depends_on :macos

  app "reManager.app"

  zap trash: [
    "~/Library/Application Support/reManager",
    "~/Library/Caches/com.wails.reManager",
    "~/Library/Preferences/com.wails.reManager.plist",
  ]
end
