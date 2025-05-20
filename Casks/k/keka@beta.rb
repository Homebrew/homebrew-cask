cask "keka@beta" do
  version "1.5.0"
  sha256 "fa7566042c428b436c43c50fc9b1953904874ed87f337365a909f09d3dd51699"

  url "https://github.com/aonez/Keka/releases/download/v#{version}/Keka-#{version}.dmg",
      verified: "github.com/aonez/Keka/"
  name "Keka"
  desc "File archiver"
  homepage "https://www.keka.io/#beta"

  livecheck do
    url :url
    regex(/^v?((?:\d+(?:\.\d+)+)([._-](?:beta|dev)(?:\.\w?\d+)?)?)/i)
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
