cask "mubu" do
  arch arm: "-arm64"

  version "5.3.0"
  sha256 arm:   "8ef4ee6396810594e03e770ae90c8c0cf83d3042bcc112eac78edd9e376802dd",
         intel: "32d99ad6ccbfbacb4bf18bd2b0aed5f2cebb3d33e185cc28e67e833d2ffeafec"

  url "https://assets.mubu.com/client/#{version}/Mubu-#{version}#{arch}.dmg"
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
