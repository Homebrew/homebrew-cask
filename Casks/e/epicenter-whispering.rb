cask "epicenter-whispering" do
  arch arm: "aarch64", intel: "x64"

  version "7.4.0"
  sha256 arm:   "a7e301a371ce45d8224aea3079bfe9c9ae568f413e72d36d1fe6a2e46c6cf494",
         intel: "cb053aa69fa9fb315f98233cb54831df3b9e527230dabde6babc7e6af39bd303"

  url "https://github.com/epicenter-os/epicenter/releases/download/v#{version}/Whispering_#{version}_#{arch}.dmg",
      verified: "github.com/epicenter-os/epicenter/"
  name "Epicenter Whispering"
  desc "Fast, minimal transcription that works with local and cloud models"
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
