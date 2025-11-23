cask "teamspeak-client@beta" do
  arch arm: "arm", intel: "intel"

  version "6.0.0-beta3.2"
  sha256 arm:   "308f342f51580202e566fd3d42729d5cc517071640809e2545ab5464ea9d23a2",
         intel: "df0d13ef3095e3d2c239b225beeb5addd27fa26206bc1f698982611458268c0b"

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
