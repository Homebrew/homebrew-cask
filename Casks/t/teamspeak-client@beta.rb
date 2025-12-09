cask "teamspeak-client@beta" do
  arch arm: "arm", intel: "intel"

  version "6.0.0-beta3.3"
  sha256 arm:   "4ff6bc17d82dcdf2a09f2191f1c35ec9c58857475902189a62ac17c7165aefe5",
         intel: "4f339d8bf20b6339c8888676c04b11806d684015dd83c68f3c1531963ec28233"

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
