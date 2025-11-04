cask "epicenter-whispering" do
  arch arm: "aarch64", intel: "x64"

  version "7.7.0"
  sha256 arm:   "f543a470ddf8d6868924381bdb63d78e41d5081075ffdc9b01e83ba143d8fd3c",
         intel: "ae717618607ec0066496ef3b699cd3176f2bbf342c3dbb76d63c2e86ad8d474d"

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
