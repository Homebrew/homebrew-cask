cask "remanager" do
  version "1.3.0"
  sha256 "ea2d18d729cbb4a6f7ee3a4112952ce6c65ba064edc0fa5b99d3941435fd4fe0"

  url "https://github.com/rmitchellscott/reManager/releases/download/v#{version}/reManager-macos-universal.zip"
  name "reManager"
  desc "Desktop app for managing mods on reMarkable tablets"
  homepage "https://github.com/rmitchellscott/reManager"

  app "reManager.app"

  zap trash: [
    "~/Library/Application Support/reManager",
    "~/Library/Caches/com.wails.reManager",
    "~/Library/Preferences/com.wails.reManager.plist",
  ]
end
