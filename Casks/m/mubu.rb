cask "mubu" do
  arch arm: "-arm64"

  version "5.4.1"
  sha256 arm:   "e55cfd20e4bcfc953a6613b3a0dc4d3329e6adc686fe5f18db8ef4674330f0c3",
         intel: "f26a8e7a6242061a0fdfdab8b75699b672053b8fd7b324bf76d95043573c177c"

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
