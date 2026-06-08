cask "keka@beta" do
  version "1.6.5"
  sha256 "3271d69ad805aa9a616118360edf33d5dc3c6322232fff9289e83da0bd23c5dd"

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
  depends_on :macos

  app "Keka.app"

  zap trash: [
    "~/Library/Application Support/Keka",
    "~/Library/Caches/com.aone.keka",
    "~/Library/Preferences/com.aone.keka.plist",
    "~/Library/Saved Application State/com.aone.keka.savedState",
  ]
end
