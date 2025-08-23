cask "lexa" do
  version "1.1.0"
  sha256 "304f4648b40e7749e407bbe447e20df83bf141abad0436157cd6c8c25e1657f8"

  # You'll need to replace this URL with your actual DMG hosting URL
  url "https://apps.lexa.chat/download/lexa-desktop-#{version}.dmg"
  name "Lexa"
  desc "Lexa Desktop - Web App Wrapper"
  homepage "https://v2.lexa.chat"

  livecheck do
    # Update this URL to point to your version checking endpoint
    url "https://apps.lexa.chat/api/version"
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
