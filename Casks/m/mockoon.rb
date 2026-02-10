cask "mockoon" do
  arch arm: "arm64", intel: "x64"

  version "9.5.0"
  sha256 arm:   "7376bc54a7c9bb104c8bcc21db67b0849215c91b6fcc876e5cf3794817296383",
         intel: "eabe8222f36df2072d89043d9fae51e01bcf96495a653f5de88e49286341209a"

  url "https://github.com/mockoon/mockoon/releases/download/v#{version}/mockoon.setup.#{version}.#{arch}.dmg",
      verified: "github.com/mockoon/mockoon/"
  name "Mockoon"
  desc "Create mock APIs in seconds"
  homepage "https://mockoon.com/"

  livecheck do
    url "https://api.mockoon.com/releases/desktop/stable.json"
    strategy :json do |json|
      json["tag"]
    end
  end

  auto_updates true
  depends_on macos: ">= :monterey"

  app "Mockoon.app"

  zap trash: [
    "~/Library/Application Support/mockoon",
    "~/Library/Logs/Mockoon",
    "~/Library/Preferences/com.mockoon.app.plist",
    "~/Library/Saved Application State/com.mockoon.app.savedState",
  ]
end
