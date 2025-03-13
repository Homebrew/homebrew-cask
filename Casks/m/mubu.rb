cask "mubu" do
  arch arm: "-arm64"

  version "4.1.5"
  sha256 arm:   "9147429aab8d21f647b013b9dd4bde93737ab0b6e41c63466ae3662dae9ce38d",
         intel: "6f6dd39f5e7742009de13520a432ce07118ed37528ee3b61f3c873d13cdf70ac"

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
