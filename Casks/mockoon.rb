cask "mockoon" do
  version "1.21.1"
  sha256 "d4dfcfb844232a0f3dfd765afb63c680d5c14a933afcc8fec912ede66c11a001"

  url "https://github.com/mockoon/mockoon/releases/download/v#{version}/mockoon.setup.#{version}.universal.dmg",
      verified: "github.com/mockoon/mockoon/"
  name "Mockoon"
  desc "Create mock APIs in seconds"
  homepage "https://mockoon.com/"

  livecheck do
    url :url
    strategy :github_latest
  end

  auto_updates true

  app "Mockoon.app"

  zap trash: [
    "~/Library/Application Support/mockoon",
    "~/Library/Logs/Mockoon",
    "~/Library/Preferences/com.mockoon.app.plist",
    "~/Library/Saved Application State/com.mockoon.app.savedState",
  ]
end
