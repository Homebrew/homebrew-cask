cask "teamspeak-client@beta" do
  arch arm: "arm", intel: "intel"

  version "6.0.0-beta3.4"
  sha256 arm:   "367260a110642604f383a44dc2463ae33c6850777b7b7bad4c260dc839b6f800",
         intel: "3074ca3783a80cd0f27ca790a5dc7c2dda22ab23e0f958d3915cad9106c9f2b2"

  url "https://files.teamspeak-services.com/pre_releases/client/#{version}/teamspeak-client-#{arch}.dmg",
      verified: "files.teamspeak-services.com/"
  name "TeamSpeak Beta"
  desc "Voice communication client"
  homepage "https://www.teamspeak.com/"

  livecheck do
    url "https://teamspeak.com/en/downloads/"
    regex(%r{href=.*?/(\d+(?:\.\d+)+[^/]*)/teamspeak[._-]client-#{arch}\.dmg}i)
  end

  disable! date: "2026-09-01", because: :fails_gatekeeper_check

  auto_updates true

  app "TeamSpeak.app"

  zap trash: [
    "~/Library/Preferences/com.teamspeak.#{version.major}.client.plist*",
    "~/Library/Preferences/TeamSpeak",
    "~/Library/Saved Application State/com.teamspeak.#{version.major}.client.savedState",
  ]
end
