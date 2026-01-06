cask "mubu" do
  arch arm: "-arm64"

  version "5.4.0"
  sha256 arm:   "b76c0af0fc4638aba29423853de471a62ed67e4f82147945e558cb622eb67f44",
         intel: "313b84d43cf7df88f01ea47e36e02408b22a56c54054eb2e0a5b8d35ed356be2"

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
