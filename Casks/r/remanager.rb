cask "remanager" do
  version "1.7.2"
  sha256 "f8a1ec1c3458b55693930051ff3f4b2b9948e4c600e1384438b086b7d940068f"

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
