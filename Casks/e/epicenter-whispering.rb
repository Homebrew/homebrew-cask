cask "epicenter-whispering" do
  arch arm: "aarch64", intel: "x64"

  version "7.7.2"
  sha256 arm:   "9b848ddd3153d99f51c6ec5455a7958829a9ee696b71f7133f03be62f09caaa3",
         intel: "b5d427601ca2dc377632e43e508dedef8afa7b6413197e5ccee7c90da355a87c"

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
