cask "roon" do
  version "1.0"
  sha256 :no_check

  url "https://download.roonlabs.net/builds/Roon.dmg",
      verified: "download.roonlabs.net/"
  name "Roon"
  desc "Music player"
  homepage "https://roonlabs.com/"

  livecheck do
    url :url
    strategy :extract_plist
  end

  depends_on macos: ">= :catalina"

  app "Roon.app"

  uninstall quit:       "RoonServer",
            login_item: "RoonServer"

  zap trash: [
    "~/Library/Roon",
    "~/Library/RoonGoer",
    "~/Library/RoonServer",
    "~/Library/Saved Application State/com.roon.Roon.savedState",
  ]
end
