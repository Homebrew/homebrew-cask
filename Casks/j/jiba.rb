cask "jiba" do
  version "1.4.4"
  sha256 "e00f1aa33f8248e51fc75182facf8985037a7092bf029875fe4315107e14348e"

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
    "~/Library/Application Support/CrashReporter/JiBA_*.plist",
    "~/Library/Application Support/CrashReporter/jiba_duplicate_guard_harness_*.plist",
    "~/Library/Application Support/JiBA",
    "~/Library/Caches/ink.hee.jibapplemusic",
    "~/Library/HTTPStorages/ink.hee.jibapplemusic",
    "~/Library/Preferences/ink.hee.jibapplemusic.plist",
    "~/Library/Preferences/JiBA.plist",
    "~/Library/Preferences/JIBAppleMusicGUI.plist",
    "~/Library/Saved Application State/ink.hee.jibapplemusic.savedState",
  ]
end
