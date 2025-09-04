cask "mubu" do
  arch arm: "-arm64"

  version "5.1.1"
  sha256 arm:   "94f658b2a41a05205a171d79aa85158e8c3aaa3f907fe4d235108d9a2e25ac8f",
         intel: "678b22e9c0db11eee75b8ec2a40b8f4d0eac3cc4215a256ffc874434e4a5213d"

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
