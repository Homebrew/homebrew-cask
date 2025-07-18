cask "mubu" do
  arch arm: "-arm64"

  version "5.0.4"
  sha256 arm:   "d63bcc2e27d496b24a0281f84d8627673ffe5a48a977f972c15619bc7c883e75",
         intel: "7513ba56ca3b8a2b0d9eee7066c1f638a20f4917a014e15c0073dcde26e46bfe"

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
