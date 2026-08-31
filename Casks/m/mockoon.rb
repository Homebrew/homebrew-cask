cask "mockoon" do
  arch arm: "arm64", intel: "x64"

  version "9.8.0"
  sha256 arm:   "99c0a347b5e8c39b6f2c3059b7d4fd2b2a012af90f36ee08fbfbd65417c64d2b",
         intel: "4964ea309090b39204d2264bbd5e514ab4d23e5db4b708493810dd17d11a061e"

  url "https://github.com/mockoon/mockoon/releases/download/v#{version}/mockoon.setup.#{version}.#{arch}.dmg"
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
  depends_on macos: :monterey

  app "Mockoon.app"

  zap trash: [
    "~/Library/Application Support/mockoon",
    "~/Library/Logs/Mockoon",
    "~/Library/Preferences/com.mockoon.app.plist",
    "~/Library/Saved Application State/com.mockoon.app.savedState",
  ]
end
