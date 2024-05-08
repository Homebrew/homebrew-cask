cask "decentr" do
  arch arm: "arm", intel: "x86"

  version "1.6.0"
  sha256 arm:   "f109ed171afd6a7b4f24661af5d25d6116f9edc3969a55d5ceb0c3e9fb76bc39",
         intel: "7e58ee967118e376eeb38ec1bc018143778bbf664a7a6cbc69a4c89224a97c03"

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
