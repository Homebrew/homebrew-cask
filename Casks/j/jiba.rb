cask "jiba" do
  version "1.4.5"
  sha256 "22e8fa4c25f6489e2d92eacd92228b3b40d300aaf57716b3043a413e03c1a776"

  url "https://hee.ink/updates/stable/JiBA-#{version}.dmg"
  name "JiBA"
  desc "Apple Music metadata localisation tool"
  homepage "https://jiba.hee.ink/"

  livecheck do
    url "https://hee.ink/updates/stable/appcast.xml"
    strategy :sparkle, &:short_version
  end

  auto_updates true
  depends_on macos: :ventura

  app "JiBA.app"

  zap trash: [
    "~/.jibam",
    "~/Library/Application Support/CrashReporter/JiBA_*.plist",
    "~/Library/Application Support/CrashReporter/jiba_duplicate_guard_harness_*.plist",
    "~/Library/Application Support/JiBA",
    "~/Library/Caches/com.apple.helpd/Generated/com.hee.jiba.help*",
    "~/Library/Caches/ink.hee.jibapplemusic",
    "~/Library/HTTPStorages/ink.hee.jibapplemusic",
    "~/Library/Preferences/ink.hee.jibapplemusic.plist",
    "~/Library/Preferences/JiBA.plist",
    "~/Library/Preferences/JIBAppleMusicGUI.plist",
    "~/Library/Saved Application State/ink.hee.jibapplemusic.savedState",
  ]
end
