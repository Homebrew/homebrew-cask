cask "mockoon" do
  arch arm: "arm64", intel: "x64"

  version "9.6.0"
  sha256 arm:   "06477accf9657bd0aa20f9c06b6e2968c999c53193ed72960114988279dee85e",
         intel: "efa23d2d80b7bb8f05d94d7bc0341281537d538168e5e5873746e1592f37e8b9"

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
