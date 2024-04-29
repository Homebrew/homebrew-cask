cask "keka@beta" do
  version "1.4.0-dev.r5383"
  sha256 "d65027dd96f1069a5ec97f84aea399446a599840f428beea4ba8568037ffa4b2"

  url "https://github.com/aonez/Keka/releases/download/v#{version}/Keka-#{version}.dmg",
      verified: "github.com/aonez/Keka/"
  name "Keka"
  desc "File archiver"
  homepage "https://www.keka.io/#beta"

  livecheck do
    url :url
    regex(/^v?((?:\d+(?:\.\d+)+)-(?:beta|dev)(?:\.\w?\d+)?)?/i)
  end

  auto_updates true
  conflicts_with cask: "keka"

  app "Keka.app"

  zap trash: [
    "~/Library/Application Support/Keka",
    "~/Library/Caches/com.aone.keka",
    "~/Library/Preferences/com.aone.keka.plist",
    "~/Library/Saved Application State/com.aone.keka.savedState",
  ]
end
