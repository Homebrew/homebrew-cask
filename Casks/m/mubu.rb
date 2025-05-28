cask "mubu" do
  arch arm: "-arm64"

  version "5.0.2"
  sha256 arm:   "ebb2a182568fbfd0a78d969c5fe8ff64489474d284637a1d1ede93ded43f3084",
         intel: "a8b97fb90de16b091e2644cd002f4d866035496d1407084731eee7815fc98eba"

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
