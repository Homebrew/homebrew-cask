cask "mubu" do
  arch arm: "-arm64"

  version "6.1.0"
  sha256 arm:   "f67a742d397a22d97a05c46fcc4e7571a93fe59fc97bedfba7c82c3ea6989767",
         intel: "c264508a9fad8c4ae339e72bc870963e41e800682f029000b6c7cabdae91d8cb"

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
