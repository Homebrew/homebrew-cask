cask "decentr" do
  arch arm: "arm", intel: "x86"

  version "1.5.9"
  sha256 arm:   "d3ab77cbfe2025008b0a741483749777ef87b54251cf82de368e99368909f164",
         intel: "e8dc888c6ee42d6a3f1fa8fdfc87d43b36123799030e2921348f008a740d233b"

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
