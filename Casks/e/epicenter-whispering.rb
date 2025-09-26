cask "epicenter-whispering" do
  arch arm: "aarch64", intel: "x64"

  version "7.5.1"
  sha256 arm:   "2daf0baa7c79bd9b5dfbeb7744e8d4b1ab941b83ab73d0562c08a14984e7efdb",
         intel: "5d96f166c621eaaa120e5571338cfdfe34752e4ca3692c18b37c133fc9d9b330"

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
