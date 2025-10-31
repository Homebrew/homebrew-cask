cask "epicenter-whispering" do
  arch arm: "aarch64", intel: "x64"

  version "7.6.0"
  sha256 arm:   "37c28dc2175142fb4607b9fbdc33c79b97e5a83ef90533e1fa6b8ac435da8196",
         intel: "cf8996d22d8cfa983b35188a2632687d4966ab04cd6fc513106110ef9841ac5c"

  url "https://github.com/epicenter-os/epicenter/releases/download/v#{version}/Whispering_#{version}_#{arch}_darwin.dmg",
      verified: "github.com/epicenter-os/epicenter/"
  name "Epicenter Whispering"
  desc "Audio transcription that works with local and cloud models"
  homepage "https://whispering.epicenter.so/"

  livecheck do
    url :url
    strategy :github_latest
  end

  app "Whispering.app"

  zap trash: [
    "~/Library/Application Support/com.bradenwong.whispering",
    "~/Library/Caches/com.bradenwong.whispering",
    "~/Library/Logs/com.bradenwong.whispering",
    "~/Library/Preferences/com.bradenwong.whispering.plist",
    "~/Library/Saved Application State/com.bradenwong.whispering.savedState",
    "~/Library/WebKit/com.bradenwong.whispering",
  ]
end
