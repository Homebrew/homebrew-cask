cask "audirvana" do
  version "3.5.44"
  sha256 "cfe591cc1c746ebaa53ac7fb4f3d9cdb9eb352b5b6b6e4ce69145c32ffa32ef9"

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
