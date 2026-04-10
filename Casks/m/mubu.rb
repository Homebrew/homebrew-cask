cask "mubu" do
  arch arm: "-arm64"

  version "5.5.0"
  sha256 arm:   "a4e75b6f8b0b635c0b2119513c1ffb1b00bdc9f1fe42847015a282d4fd21ac10",
         intel: "6ec7464dc997efbaa1d725090ea60e2509fe820c1acf51f77948167699747415"

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
