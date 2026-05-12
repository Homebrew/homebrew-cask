cask "mubu" do
  arch arm: "-arm64"

  version "5.5.3"
  sha256 arm:   "67b7fd8b631fc50e85b567c82b2ad838ab7327e88313f0749eeccd9591c31366",
         intel: "a0efb04a05b438a58abe4f6cf91f5c98cd888ddd249baf70494e15c9a1c5fb67"

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
