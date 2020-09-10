cask "keka" do
  version "1.1.30"
  sha256 "b37b827e9a8885e63f108190cb23b3ac3f67f1e260462f591e69c2db2a941f93"

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
