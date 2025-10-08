cask "epicenter-whispering" do
  arch arm: "aarch64", intel: "x64"

  version "7.5.2"
  sha256 arm:   "71589f3783491793e32a30550a4d6333c279794370fcb610157b7575da9c9dd6",
         intel: "bc3a3dd5025a9ba839331d1aa53f0ad2299f07e32e124aec6401797598cd4597"

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
