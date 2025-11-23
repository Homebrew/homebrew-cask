cask "mubu" do
  arch arm: "-arm64"

  version "5.2.0"
  sha256 arm:   "fcbae55e14ff3b1aacae11814229b78095d3975e6b923506df6b33629af26166",
         intel: "11ae5aed39c2f51bff44e1d57a8352240d01a39ea36f0dc51bbb51914ee4eef4"

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
