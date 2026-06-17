cask "mubu" do
  arch arm: "-arm64"

  version "5.7.0"
  sha256 arm:   "9a7e8ec004779a3c8fa81b41d47f2ceb234ccaaddeab867d8d43db032cef5ead",
         intel: "bef94d739b62f5a6a2229326174a3f2ea16b3266960b68364e337882e8a528f7"

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
