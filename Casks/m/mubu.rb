cask "mubu" do
  arch arm: "-arm64"

  version "5.0.3"
  sha256 arm:   "3e2910732130fecdd368773d969db1707cb5a9e66abff849bf163352a271dfb5",
         intel: "12acad1f9a11bffcb0aaeffd9a4efa82f272c1e8622a45e2319f39e0d29d89f3"

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
