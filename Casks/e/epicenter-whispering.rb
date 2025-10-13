cask "epicenter-whispering" do
  arch arm: "aarch64", intel: "x64"

  version "7.5.3"
  sha256 arm:   "abeb698d2591c7b7722f1ed1bd8a79d0db99f5bf25d873459158da189c84d253",
         intel: "0caded5b467e40bc393caad9142c5c13559e31cb8beee3eb38907c207c81250d"

  url "https://github.com/epicenter-os/epicenter/releases/download/v#{version}/Whispering_#{version}_#{arch}.dmg",
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
