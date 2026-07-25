cask "mockoon" do
  arch arm: "arm64", intel: "x64"

  version "9.7.0"
  sha256 arm:   "ebb05ad602b1a4df68e0b633027d4011fb335f9539b0a2ed1c1a28d9523934ac",
         intel: "3ad372a58009c4a772a97b23bcb31437ee62bd8a14a6ea17bd5d8e233a253837"

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
  depends_on macos: :monterey

  app "Mockoon.app"

  zap trash: [
    "~/Library/Application Support/mockoon",
    "~/Library/Logs/Mockoon",
    "~/Library/Preferences/com.mockoon.app.plist",
    "~/Library/Saved Application State/com.mockoon.app.savedState",
  ]
end
