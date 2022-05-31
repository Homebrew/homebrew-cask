cask "mockoon" do
  version "1.19.0"
  sha256 "563478a999649d6815e516740d3277dff27365fe062f3e590aac21842eb6bb76"

  url "https://github.com/mockoon/mockoon/releases/download/v#{version}/mockoon.setup.#{version}.universal.dmg",
      verified: "github.com/mockoon/mockoon/"
  name "Mockoon"
  desc "Create mock APIs in seconds"
  homepage "https://mockoon.com/"

  # a regex is required to skip tags that relate to mockoon cli
  livecheck do
    url :url
    strategy :git
    regex(/^v?(\d+(?:\.\d+)+)/i)
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
