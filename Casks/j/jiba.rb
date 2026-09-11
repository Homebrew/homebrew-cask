cask "jiba" do
  version "1.5.1"
  sha256 "a17c5adde186d04aae21098feb328dfd14be212e3e0b5fa44bfcac97b190b037"

  url "https://hee.ink/updates/stable/JiBA-#{version}.dmg"
  name "JiBA"
  desc "Apple Music metadata localisation tool"
  homepage "https://jiba.hee.ink/"

  livecheck do
    url "https://hee.ink/updates/stable/appcast.xml"
    strategy :sparkle, &:short_version
  end

  auto_updates true
  depends_on macos: :sonoma

  app "JiBA.app"

  uninstall quit: "ink.hee.jibapplemusic"

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
