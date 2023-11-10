cask "decentr" do
  arch arm: "arm", intel: "x86"

  version "1.5.5"
  sha256 arm:   "165da52671a51563cdaccc36eaa574b75686310da4599009ed9472ae184b5520",
         intel: "1ad735bae78f751c39042ed6f0258c532c321fcebb5daa36be38f819673aaadd"

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
