cask "keka" do
  version "1.2.56"
  sha256 "cfed68a618da5d5957dc40eb3f33e27e2b1c1f31d103063c23f20918a507f470"

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
