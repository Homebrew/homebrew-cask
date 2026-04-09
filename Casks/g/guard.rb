cask "guard" do
  version "1.0.0"
  sha256 "1b108b68bc8d67cffa1dbaa00dfc1ca5b7fe1adfff4b7f3b6ad6d45dfff9fd00"

  url "https://github.com/FaisalFehad/Guard/releases/download/v#{version}/Guard.dmg",
      verified: "github.com/FaisalFehad/Guard/"
  name "Guard"
  desc "Camera access monitor that freezes processes until approved"
  homepage "https://guard-app.net"

  depends_on macos: ">= :sonoma"

  app "Guard.app"

  zap trash: [
    "~/Library/Application Support/Guard",
    "~/Library/LaunchAgents/com.guard-app.mac.plist",
    "~/Library/Preferences/com.guard-app.mac.plist",
  ]
end
