cask "spacejump" do
  version "2.0.2"
  sha256 "7bd066c0fb2b4dfa858604f5a0aed3bf233bb3f96968b977955ff4539adb2291"

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
    "~/Library/Application Support/com.ideabridge.spacejump",
    "~/Library/Caches/com.ideabridge.spacejump",
    "~/Library/HTTPStorages/com.ideabridge.spacejump*",
    "~/Library/Logs/SpaceJump",
    "~/Library/Preferences/com.ideabridge.spacejump.plist",
  ]
end
