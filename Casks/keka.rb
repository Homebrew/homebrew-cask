cask "keka" do
  version "1.2.52"
  sha256 "62d586d70936177ce1f2e93bd3bd0d935cf5207bab6c6436e3f2b5388dddd5ab"

  url "https://github.com/aonez/Keka/releases/download/v#{version}/Keka-#{version}.dmg",
      verified: "github.com/aonez/Keka/"
  name "Keka"
  desc "File archiver"
  homepage "https://www.keka.io/"

  livecheck do
    url "https://u.keka.io"
    strategy :sparkle, &:short_version
  end

  auto_updates true
  conflicts_with cask: "homebrew/cask-versions/keka-beta"

  app "Keka.app"

  zap trash: [
    "~/Library/Application Scripts/com.aone.keka",
    "~/Library/Application Scripts/com.aone.keka.KekaFinderIntegration",
    "~/Library/Application Support/Keka",
    "~/Library/Caches/com.aone.keka",
    "~/Library/Containers/com.aone.keka",
    "~/Library/Containers/com.aone.keka.KekaFinderIntegration",
    "~/Library/Group Containers/*.group.com.aone.keka",
    "~/Library/Preferences/com.aone.keka.plist",
    "~/Library/Saved Application State/com.aone.keka.savedState",
  ]
end
