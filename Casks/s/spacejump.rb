cask "spacejump" do
  version "3.0.1"
  sha256 "e95f88bb797b7d840f9ae1ea64af476bb3daad4fa07c283ef5ff2448a02b2c99"

  url "https://pub-2f1e73dd67bd462192b6592baa57a0ce.r2.dev/SpaceJump-v#{version}.dmg"
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
    "~/Library/Application Support/com.ideabridge.spacejump",
    "~/Library/Application Support/SpaceJump",
    "~/Library/Caches/com.ideabridge.spacejump",
    "~/Library/HTTPStorages/com.ideabridge.spacejump*",
    "~/Library/Logs/SpaceJump",
    "~/Library/Preferences/com.ideabridge.spacejump.plist",
  ]
end
