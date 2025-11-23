cask "google-assistant" do
  version "1.1.0"
  sha256 "fe95491bb55136e62b4a85ad49e648d03e662df8445c417bade70d95d711116b"

  url "https://github.com/Melvin-Abraham/Google-Assistant-Unofficial-Desktop-Client/releases/download/v#{version}/Google-Assistant-#{version}.dmg"
  name "Google Assistant Unofficial Desktop Client"
  desc "Cross-platform unofficial Google Assistant Client for Desktop"
  homepage "https://github.com/Melvin-Abraham/Google-Assistant-Unofficial-Desktop-Client"

  app "Google Assistant.app"

  zap trash: [
    "~/Library/Application Support/Caches/g-assist-updater",
    "~/Library/Application Support/Google Assistant",
    "~/Library/Logs/Google Assistant",
    "~/Library/Preferences/com.redvirus.g-assist.plist",
    "~/Library/Saved Application State/com.redvirus.g-assist.savedState",
  ]

  caveats do
    requires_rosetta
  end
end
