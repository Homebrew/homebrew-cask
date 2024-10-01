cask "mubu" do
  arch arm: "-arm64"

  version "4.0.5"
  sha256 arm:   "3ff86c07dd29d11f59eda6e087d91bd191cd9eff9e8f0b7d2fc7c92188dbde25",
         intel: "3ff86c07dd29d11f59eda6e087d91bd191cd9eff9e8f0b7d2fc7c92188dbde25"

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
