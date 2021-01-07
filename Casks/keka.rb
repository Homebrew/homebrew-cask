cask "keka" do
  version "1.2.7"
  sha256 "53586a0d994cc34f47fc58c48b1280acd442ef4e14c16b5608b402b6f87f3f11"

  url "https://github.com/aonez/Keka/releases/download/v#{version}/Keka-#{version}.dmg",
      verified: "github.com/aonez/Keka/"
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
