cask "mubu" do
  arch arm: "-arm64"

  version "4.1.2"
  sha256 arm:   "2661c4fd360348fdf8e7d459f9f2a3bdd4644fc2a9ceed7c6ca63c81b5ab31dd",
         intel: "77cdb12675b9df337ffe582e8c8844073e1487a92a691206cb6ba73f7a812f1d"

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
