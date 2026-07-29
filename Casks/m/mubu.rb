cask "mubu" do
  arch arm: "-arm64"

  version "5.7.2"
  sha256 arm:   "4b21138168a1e2a405fa2d1cde0b65a61842a3956faa43372670d1a8b156949c",
         intel: "4d64d3d36f715665046c2773afdc4c1be39eeaacd7dfb60ef5356facb778f4ee"

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
