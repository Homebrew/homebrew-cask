cask "decentr" do
  arch arm: "arm", intel: "x86"

  version "1.5.12"
  sha256 arm:   "f234db7ae4664752ca5248ccc05b75b387a14e0a83859efd0ce4bea155cd37d3",
         intel: "4985e9c8d5cb49b8d495a56ef8713afc8f972584b57ddc031b9c0a75f830ce81"

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
