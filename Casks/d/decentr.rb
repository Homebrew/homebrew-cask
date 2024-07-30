cask "decentr" do
  arch arm: "arm", intel: "x86"

  version "1.7.1"
  sha256 arm:   "f8ff587ac6a068df70b2aaab73b2a0137b556a0ab411b75c2559ff31018e18db",
         intel: "bd2edea84e37ca06bb6c12fc31b0f578b6ac4d811182669e9bb360c6c296ffd2"

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
