cask "mubu" do
  arch arm: "-arm64"

  version "5.5.1"
  sha256 arm:   "06ec79c4c4413cc0281d3da89a3cccdf33301f15415b703c6f4f848a173acc74",
         intel: "61ec6e495566626184d3135c46fd412db273e054d570a2f56394231a79c7f899"

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
