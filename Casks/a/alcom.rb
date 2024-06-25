cask "alcom" do
  version "0.1.8"
  sha256 "de53f507decd68174e3a68fb29a96bd3f2878f85292cd30a8ea615fe8ac129b2"

  url "https://github.com/vrc-get/vrc-get/releases/download/gui-v#{version}/ALCOM-#{version}-universal.dmg",
      verified: "github.com/vrc-get/vrc-get/"
  name "ALCOM"
  desc "Graphical frontend of vrc-get, open source alternative to VRChat Package Manager"
  homepage "https://vrc-get.anatawa12.com/alcom"

  livecheck do
    url :url
    regex(/^gui[._-]v?(\d+(?:\.\d+)+)$/i)
  end

  depends_on macos: ">= :high_sierra"

  app "ALCOM.app"

  zap trash: [
    "~/Library/Caches/com.anataw12.vrc-get",
    "~/Library/Preferences/com.anataw12.vrc-get.plist",
    "~/Library/Saved Application State/com.anataw12.vrc-get.savedState",
    "~/Library/WebKit/com.anataw12.vrc-get",
    "~/Library/WebKit/vrc-get-gui",
  ]
end
