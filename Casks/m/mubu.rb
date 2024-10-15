cask "mubu" do
  arch arm: "-arm64"

  version "4.0.6"
  sha256 arm:   "e0d8893476a653afbbb4be8f9f6235490ae83e3a2a619d7c63c1ed76c250a0b9",
         intel: "ee0f1acc1cbdc73299e41ebdb054a7c61544f83cb810dcecb3094b5c3534f10b"

  url "https://mubu-assets.tos-cn-shanghai.volces.com/client/Mubu-#{version}#{arch}.dmg",
      verified: "mubu-assets.tos-cn-shanghai.volces.com/client/"
  name "Mubu"
  desc "Outline note taking and management app"
  homepage "https://mubu.com/"

  livecheck do
    url "https://api2.mubu.com/v3/api/desktop_client/latest_version"
    strategy :json do |json|
      json.dig("data", "mac")
    end
  end

  auto_updates true

  app "幕布.app"

  zap trash: [
    "~/Library/Application Support/幕布",
    "~/Library/Preferences/com.mubu.desktop.plist",
    "~/Library/Saved Application State/com.mubu.desktop.savedState",
  ]
end
