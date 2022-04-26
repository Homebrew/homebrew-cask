cask "blitz" do
  version "1.16.52"
  sha256 "6333c8b0379e9d2979d05f9a57c73925316024c1f61d74b5b08a6113ae4bd44d"

  url "https://blitz-stable.blitz.gg/Blitz-#{version}.dmg"
  name "Blitz"
  desc "Performance analysis software"
  homepage "https://blitz.gg/"

  livecheck do
    url "https://dl.blitz.gg/download/mac"
    strategy :header_match
  end

  auto_updates true

  app "Blitz.app"

  uninstall quit: "com.blitz.app"

  zap trash: [
    "~/Library/Application Support/Blitz",
    "~/Library/Caches/com.blitz.app.ShipIt",
    "~/Library/Cookies/com.blitz.app.binarycookies",
    "~/Library/Logs/Blitz",
    "~/Library/Preferences/com.blitz.app.plist",
    "~/Library/Saved Application State/com.blitz.app.savedState",
  ]
end
