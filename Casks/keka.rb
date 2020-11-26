cask "keka" do
  version "1.2.4"
  sha256 "8617ffe10e86d382a7d5d852f67bc7526aa86f1063d5a6b0c5eeddc84c3d676e"

  # github.com/aonez/Keka/ was verified as official when first introduced to the cask
  url "https://github.com/aonez/Keka/releases/download/v#{version}/Keka-#{version}.dmg"
  appcast "https://github.com/aonez/Keka/releases.atom"
  name "Keka"
  desc "File archiver"
  homepage "https://www.keka.io/"

  auto_updates true
  conflicts_with cask: "keka-beta"

  app "Keka.app"

  zap trash: [
    "~/Library/Containers/com.aone.keka",
    "~/Library/Application Support/Keka",
    "~/Library/Caches/com.aone.keka",
    "~/Library/Preferences/com.aone.keka.plist",
    "~/Library/Saved Application State/com.aone.keka.savedState",
  ]
end
