cask "mubu" do
  arch arm: "-arm64"

  version "6.0.1"
  sha256 arm:   "b9b548575a47c3d1a76d1fe8c521722a2055c157d8ed93121df6856169d068c5",
         intel: "b455f152a86e1d289415169bfbb12b290b4ff2df8b88f9ecba31a98d71643b90"

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
