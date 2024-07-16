cask "decentr" do
  arch arm: "arm", intel: "x86"

  version "1.7.0"
  sha256 arm:   "9f26348da10ae01824d012a8064a26d3056ac08006ff5f99356fe817fac3df6e",
         intel: "f09d4b456e554c31c9bce027eee6bc32bfe7aa7d9741b0bbea963cc7bed0ba52"

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
