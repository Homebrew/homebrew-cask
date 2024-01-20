cask "audirvana" do
  version "3.5.50"
  sha256 "c1adb7d7efdd67f72ffc0a8819cc5b579ffe32363d0e502e1e7264f79c5792e7"

  url "https://audirvana.com/delivery/Audirvana_#{version}.dmg"
  name "Audirvana"
  desc "Audio playback software"
  homepage "https://audirvana.com/"

  livecheck do
    url "https://audirvana.com/delivery/audirvana#{version.major}_#{version.minor}_appcast.xml"
    strategy :sparkle, &:short_version
  end

  auto_updates true
  depends_on macos: ">= :el_capitan"

  app "Audirvana.app"

  zap trash: [
    "/Library/LaunchDaemons/com.audirvana.Audirvana-Plus.plist",
    "/Library/LaunchDaemons/com.audirvana.SysOptimizerTool.plist",
    "/Library/PrivilegedHelperTools/com.audirvana.Audirvana-Plus",
    "~/Library/Caches/com.audirvana.Audirvana-Plus",
    "~/Library/Cookies/com.audirvana.Audirvana-Plus.binarycookies",
    "~/Library/Preferences/com.audirvana.Audirvana-Plus.plist",
    "~/Library/Preferences/com.audirvana.Audirvana.plist",
  ]
end
