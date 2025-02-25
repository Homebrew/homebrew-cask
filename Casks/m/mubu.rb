cask "mubu" do
  arch arm: "-arm64"

  version "4.1.4"
  sha256 arm:   "b56ec1f61bffaee2a9e489337ceeabea127af0be2d215186440b430c916d846a",
         intel: "f32ca13ee158e2aa1a8eb902a58459d131a51c82fdda98d5025630c49e71424f"

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
