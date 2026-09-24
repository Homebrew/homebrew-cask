cask "mubu" do
  arch arm: "-arm64"

  version "6.0.2"
  sha256 arm:   "f4c93d384e1929d900e774c18f730d5aabbf2588ae1208954acc61460d2004ac",
         intel: "cdb57aadb9115f116355ea985e3b5c53b6754e059ffb785b2c15b73c7e746709"

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
  depends_on :macos

  app "幕布.app"

  zap trash: [
    "~/Library/Application Support/幕布",
    "~/Library/Preferences/com.mubu.desktop.plist",
    "~/Library/Saved Application State/com.mubu.desktop.savedState",
  ]
end
