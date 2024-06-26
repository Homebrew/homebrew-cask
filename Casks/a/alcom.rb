cask "alcom" do
  version "0.1.9"
  sha256 "5acd4c0291c7a9ee1bfee6ebb9f556c9b6fc9cfb1539132275081707b276812d"

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
