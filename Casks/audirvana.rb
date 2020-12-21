cask "audirvana" do
  version "3.5.43,3573"
  sha256 "d4ecff4fd5ea8fa501abd530475fdf300212a73a5a59ff874e0dd43c99002a15"

  url "https://audirvana.com/delivery/Audirvana_#{version.before_comma}.dmg"
  name "Audirvana"
  desc "Audio playback software"
  homepage "https://audirvana.com/"

  livecheck do
    url "https://audirvana.com/delivery/audirvana#{version.major}_#{version.minor}_appcast.xml"
    strategy :sparkle
  end

  auto_updates true

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
