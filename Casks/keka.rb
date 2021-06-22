cask "keka" do
  version "1.2.15"
  sha256 "dfd1eef2c7a82307f57742a427613713af041b81dd2f693011d7bc84444615f0"

  url "https://github.com/aonez/Keka/releases/download/v#{version}/Keka-#{version}.dmg",
      verified: "github.com/aonez/Keka/"
  name "Keka"
  desc "File archiver"
  homepage "https://www.keka.io/"

  auto_updates true
  conflicts_with cask: "homebrew/cask-versions/keka-beta"

  app "Keka.app"

  zap trash: [
    "~/Library/Containers/com.aone.keka",
    "~/Library/Application Support/Keka",
    "~/Library/Caches/com.aone.keka",
    "~/Library/Preferences/com.aone.keka.plist",
    "~/Library/Saved Application State/com.aone.keka.savedState",
  ]
end
