cask "decentr" do
  arch arm: "arm", intel: "x86"

  version "1.9.1"
  sha256 arm:   "8640878b524afff5f290f42a8f26743f84b29e38963e7a64f50ef84b705ca190",
         intel: "63910dc71655031550b2c7ddbb2879ffa98474553296500d9bf13920b40e25e5"

  url "https://decentr.net/MacOS_#{arch}_Decentr_#{version}.dmg"
  name "Decentr"
  desc "Web3 blockchain/metaverse browser"
  homepage "https://decentr.net/"

  livecheck do
    url :homepage
    regex(/href=.*?MacOS[._-]#{arch}[._-]Decentr[._-]v?(\d+(?:\.\d+)+)\.dmg/i)
  end

  depends_on macos: ">= :catalina"

  app "Decentr.app"

  zap trash: [
    "~/Library/Application Support/Decentr",
    "~/Library/Caches/Decentr",
    "~/Library/Preferences/com.Decentr.Decentr.plist",
    "~/Library/Saved Application State/com.Decentr.Decentr.savedState",
  ]
end
