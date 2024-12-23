cask "mubu" do
  arch arm: "-arm64"

  version "4.1.1"
  sha256 arm:   "81d1b321147161644c3a0731de58556a4228fed1ae33890fc8c60119ea93df9f",
         intel: "8fa19b2de24ec5ca056d847728082e1efba6b283b99ae85eed26cdfa5bf58561"

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
