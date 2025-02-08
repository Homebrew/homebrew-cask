cask "mubu" do
  arch arm: "-arm64"

  version "4.1.3"
  sha256 arm:   "dda96890073bfa5603f088d97cf8aa92b08f966aecc03dff445773c5017f1e19",
         intel: "2265cf65506eb026ea64c1364a53ced30b9ae084d5c35d0fdaed226a13874124"

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
