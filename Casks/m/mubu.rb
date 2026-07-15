cask "mubu" do
  arch arm: "-arm64"

  version "5.7.1"
  sha256 arm:   "9e2eb4d893c0cca8f25a336b6ea2e079c5f810dd5fdea658cfa689a62deb8223",
         intel: "606c20095d8aee976496cb3bd7a31cf47be47a5eb6767dad6f51ae6a1db5e06d"

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
