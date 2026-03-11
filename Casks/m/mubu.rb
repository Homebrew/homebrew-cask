cask "mubu" do
  arch arm: "-arm64"

  version "5.4.2"
  sha256 arm:   "40e9635c48ae8c1e0f6553ecd95efb6ed8d989347fe6c5984dbb21e29b5dd3fd",
         intel: "55df00712ef0e3219cdf804ffc3f011cbe82a39fdaa492ea58cc58e5df93d38c"

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
