cask "mubu" do
  arch arm: "-arm64"

  version "4.1.0"
  sha256 arm:   "f11ee349a1b05f0fdab5087f6e97423633dc736d3d55cb0d09c204ca908e27a6",
         intel: "d3ac5a0ad72b934e26be159d69c84b035c98ce712c5a2c800acf8941b4ffbf59"

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
