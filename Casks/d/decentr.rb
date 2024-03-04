cask "decentr" do
  arch arm: "arm", intel: "x86"

  version "1.5.10"
  sha256 arm:   "5dc09b99928aebde20696dbce4b4b86432bf1f188f3bb2046111dca02b30f65a",
         intel: "2e13598aed5a86810b87e567c9efc2695aa5a1e4499913c306c94fda4ee62c0c"

  url "https://decentr.net/MacOS_#{arch}_Decentr_#{version}.dmg"
  name "Decentr"
  desc "Web3 blockchain/metaverse browser"
  homepage "https://decentr.net/"

  livecheck do
    url :homepage
    regex(/href=.*?MacOS[._-]#{arch}[._-]Decentr[._-]v?(\d+(?:\.\d+)+)\.dmg/i)
  end

  app "Decentr.app"

  zap trash: [
    "~/Library/Application Support/Decentr",
    "~/Library/Caches/Decentr",
    "~/Library/Preferences/com.Decentr.Decentr.plist",
    "~/Library/Saved Application State/com.Decentr.Decentr.savedState",
  ]
end
