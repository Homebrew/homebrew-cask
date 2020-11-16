cask "keka" do
  version "1.2.2"
  sha256 "0ff9ba6467844894bbdee3e625116b72d8ad6bfaffe08d5128c3c62d495c0b6c"

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
