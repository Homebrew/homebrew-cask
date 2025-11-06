cask "epicenter-whispering" do
  arch arm: "aarch64", intel: "x64"

  version "7.7.1"
  sha256 arm:   "1eba037de1476a3f981cb125ca1337ec503962d7a99813fc6ba980542b846fba",
         intel: "8dd54b5fca5093d38c2600ba2447db8c6dc4200dd1dd4d8150fdafb42059c984"

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
