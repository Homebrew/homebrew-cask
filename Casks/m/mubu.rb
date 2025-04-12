cask "mubu" do
  arch arm: "-arm64"

  version "5.0.0"
  sha256 arm:   "a733eae8878712779ed9b235b57dc7d9ac05e938ad66ded1760e1ee86f38a01f",
         intel: "ee0bfdad51203469d2b2fa4d0fb87b06ed1f6cb439d39dfaa04bcb4f6284ad13"

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
