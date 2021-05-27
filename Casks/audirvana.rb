cask "audirvana" do
  version "3.5.46,3576"
  sha256 "e024b8ac39aff8b5608814fb757a082f742233fb21a450d706a2a9929aa06562"

  url "https://audirvana.com/delivery/Audirvana_#{version.before_comma}.dmg"
  name "Audirvana"
  desc "Audio playback software"
  homepage "https://audirvana.com/"

  livecheck do
    url "https://audirvana.com/delivery/audirvana#{version.major}_#{version.minor}_appcast.xml"
    strategy :sparkle
  end

  auto_updates true
  depends_on macos: ">= :high_sierra"

  app "Audirvana.app"

  zap trash: [
    "/Library/LaunchDaemons/com.audirvana.Audirvana-Plus.plist",
    "/Library/LaunchDaemons/com.audirvana.SysOptimizerTool.plist",
    "/Library/PrivilegedHelperTools/com.audirvana.Audirvana-Plus",
    "~/Library/Caches/com.audirvana.Audirvana-Plus",
    "~/Library/Cookies/com.audirvana.Audirvana-Plus.binarycookies",
    "~/Library/Preferencescom.audirvana.Audirvana.plist",
    "~/Library/Preferences/com.audirvana.Audirvana-Plus.plist",
  ]
end
