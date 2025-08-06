cask "teamspeak-client@beta" do
  version "6.0.0-beta2"
  sha256 "7fe0109391515076c97f48503aabbae4032cf0877648aa19ddd81688ac6dff0d"

  url "https://files.teamspeak-services.com/pre_releases/client/#{version}/teamspeak-client.dmg",
      verified: "files.teamspeak-services.com/"
  name "TeamSpeak Beta"
  desc "Voice communication client"
  homepage "https://www.teamspeak.com/"

  livecheck do
    url "https://teamspeak.com/en/downloads/"
    regex(%r{href=.*?/(\d+(?:\.\d+)+[^/]*)/teamspeak[._-]client\.dmg}i)
  end

  auto_updates true
  depends_on macos: ">= :sierra"

  app "TeamSpeak.app"

  zap trash: [
    "~/Library/Preferences/com.teamspeak.#{version.major}.client.plist*",
    "~/Library/Preferences/TeamSpeak",
    "~/Library/Saved Application State/com.teamspeak.#{version.major}.client.savedState",
  ]

  caveats do
    requires_rosetta
  end
end
