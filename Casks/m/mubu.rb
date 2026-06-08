cask "mubu" do
  arch arm: "-arm64"

  version "5.6.0"
  sha256 arm:   "8b458bb24e5b7208025927f32f06e9afadcef140f038131ac8af671a8e4c8879",
         intel: "49b1788eb4c6937ddb1be9fdfdcc5effbfc5c50bccea1c49793dbf95dd84318b"

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
