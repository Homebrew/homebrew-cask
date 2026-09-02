cask "spacejump" do
  version "2.1.2"
  sha256 "edfb488dd3f0208f664a59c7ec9c57d520c3d1259f039816089580a5a1384aa4"

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
    "~/Library/Caches/com.ideabridge.spacejump",
    "~/Library/HTTPStorages/com.ideabridge.spacejump*",
    "~/Library/Logs/SpaceJump",
    "~/Library/Preferences/com.ideabridge.spacejump.plist",
  ]
end
