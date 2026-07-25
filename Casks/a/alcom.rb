cask "alcom" do
  version "1.1.8"
  sha256 "583167060ed4369f7f16fe64db3bf25a115add6232eec5cab1f5cb2578bae65c"

  url "https://github.com/vrc-get/vrc-get/releases/download/gui-v#{version}/ALCOM-#{version}-universal.dmg",
      verified: "github.com/vrc-get/vrc-get/"
  name "ALCOM"
  desc "Graphical frontend of vrc-get, open source alternative to VRChat Package Manager"
  homepage "https://vrc-get.anatawa12.com/alcom"

  livecheck do
    url :url
    regex(/^gui[._-]v?(\d+(?:\.\d+)+)$/i)
  end

  depends_on :macos

  app "ALCOM.app"

  zap trash: [
    "~/Library/Caches/com.anataw12.vrc-get",
    "~/Library/Preferences/com.anataw12.vrc-get.plist",
    "~/Library/Saved Application State/com.anataw12.vrc-get.savedState",
    "~/Library/WebKit/com.anataw12.vrc-get",
    "~/Library/WebKit/vrc-get-gui",
  ]
end
