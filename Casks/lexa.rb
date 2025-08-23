cask "lexa" do
  version "1.1.0"
  sha256 "963799ef88d181ff3a1b16f6cef8934e1195bbdac99143d8b1dc3554a8ff3474"

  # You'll need to replace this URL with your actual DMG hosting URL
  url "https://apps.lexa.chat/download/lexa-desktop-#{version}.dmg"
  name "Lexa"
  desc "Lexa Desktop - Web App Wrapper"
  homepage "https://v2.lexa.chat"

  livecheck do
    # Update this URL to point to your version checking endpoint
    url "https://apps.lexa.chat/api/version/version.json"
    strategy :json do |json|
      json["version"]
    end
  end

  app "Lexa.app"

  zap trash: [
    "~/Library/Application Support/Lexa",
    "~/Library/Caches/Lexa",
    "~/Library/Preferences/com.lexa.desktop.plist",
    "~/Library/Saved Application State/com.lexa.desktop.savedState",
  ]
end
