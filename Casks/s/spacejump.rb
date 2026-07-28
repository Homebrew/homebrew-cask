cask "spacejump" do
  version "1.6.6"
  sha256 "7110926a1969469480e0056374022a6ce6c3567743551aa5dce3e58357ac6955"

  url "https://pub-2f1e73dd67bd462192b6592baa57a0ce.r2.dev/SpaceJump-v#{version}.dmg",
      verified: "pub-2f1e73dd67bd462192b6592baa57a0ce.r2.dev/"
  name "SpaceJump"
  desc "Menu bar utility to name and switch desktop Spaces"
  homepage "https://getspacejump.com/"

  livecheck do
    url "https://getspacejump.com/appcast.xml"
    strategy :sparkle, &:short_version
  end

  auto_updates true
  depends_on macos: :ventura

  app "SpaceJump.app"

  zap trash: [
    "~/Library/Caches/com.ideabridge.spacejump",
    "~/Library/Logs/SpaceJump",
    "~/Library/Preferences/com.ideabridge.spacejump.plist",
  ]
end
