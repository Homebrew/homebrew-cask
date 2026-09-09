cask "mubu" do
  arch arm: "-arm64"

  version "6.0.0"
  sha256 arm:   "a55dda8c78831f964b3eb4ce243cb1a1835f491494c118b13890d128d0338b39",
         intel: "f1e01cbf4876814f12d0ab9b955ed027f5d24855da2e954e8ce380d926c0b7c5"

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
