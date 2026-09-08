cask "mubu" do
  arch arm: "-arm64"

  version "5.7.3"
  sha256 arm:   "9b38cdc1f5221d804a4d86cb0dd0ac90401c774a1ca54bcac25d2d3d1605a475",
         intel: "11e147ddada115331509b9dd72bc702122a94f2308a734056b2f33592793565e"

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
