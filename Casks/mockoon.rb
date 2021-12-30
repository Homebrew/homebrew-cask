cask "mockoon" do
  version "1.17.0"
  sha256 "4805ed66883ba0565f589e63b99c1e3c149308484cb30a369e4e879d1d974885"

  url "https://github.com/mockoon/mockoon/releases/download/v#{version}/mockoon.setup.#{version}.universal.dmg",
      verified: "github.com/mockoon/mockoon/"
  name "Mockoon"
  desc "Create mock APIs locally"
  homepage "https://mockoon.com/"

  auto_updates true

  app "Mockoon.app"

  zap trash: [
    "~/Library/Application Support/mockoon",
    "~/Library/Logs/Mockoon",
    "~/Library/Preferences/com.mockoon.app.plist",
    "~/Library/Saved Application State/com.mockoon.app.savedState",
  ]
end
