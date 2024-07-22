cask "teamspeak-client@beta" do
  version "5.0.0-beta77"
  sha256 "ab8f4b0f04a514f60a32dc48339aa4608460696f58f3e29ecfcc6f2e16bab86b"

  url "https://files.teamspeak-services.com/pre_releases/client/#{version}/teamspeak-client.dmg",
      verified: "files.teamspeak-services.com/"
  name "TeamSpeak Beta"
  desc "Voice communication client"
  homepage "https://www.teamspeak.com/"

  livecheck do
    url "https://teamspeak.com/en/downloads"
    regex(%r{href=.*?/client/([\d\.]+-beta\d+)/teamspeak-client\.dmg}i)
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
