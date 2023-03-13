cask "decentr" do
  arch arm: "ARM", intel: "Intel"

  version "1.5.0"
  sha256 arm:   "30b9d863108e929d3d084bcf1c0f812fb4958e4017d1662ffda5dfee5cfec375",
         intel: "41ca63847072daa383836f567cb24c10c8b53fed87029725e4c9d55c51ba8616"

  url "https://decentr.net/MacOS_#{arch}_Decentr_#{version}.zip"
  name "Decentr"
  desc "Web3 blockchain/metaverse browser"
  homepage "https://decentr.net/"

  livecheck do
    url :homepage
    regex(/href=.*?MacOS[._-]#{arch}[._-]Decentr[._-]v?(\d+(?:\.\d+)+)\.zip/i)
  end

  app "Decentr.app"

  zap trash: [
    "~/Library/Application Support/Decentr",
    "~/Library/Caches/Decentr",
    "~/Library/Preferences/com.Decentr.Decentr.plist",
    "~/Library/Saved Application State/com.Decentr.Decentr.savedState",
  ]
end
