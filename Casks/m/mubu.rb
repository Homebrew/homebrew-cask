cask "mubu" do
  arch arm: "-arm64"

  version "5.1.2"
  sha256 arm:   "ba8f9cbbc4b4bf5ce43f3feb013ec802ab48e723b2bef8dc19c4be8a3897f5e4",
         intel: "266934ecf84e227ceca0298cdbcf433f24ab9f38bfe7c9d041733fe2edd2c627"

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
