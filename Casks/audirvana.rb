cask "audirvana" do
  version "3.5.41"
  sha256 "d4b9b016aa6d30c05b71dcd753535fdb506eab6b769a664ffb9490e77534feac"

  url "https://audirvana.com/delivery/Audirvana_#{version}.dmg"
  appcast "https://audirvana.com/delivery/audirvana#{version.major}_#{version.minor}_appcast.xml"
  name "Audirvana"
  desc "Audio playback software"
  homepage "https://audirvana.com/"

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
