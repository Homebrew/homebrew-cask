cask "decentr" do
  arch arm: "M1", intel: "x64"

  version "1.3.2"
  sha256 arm:   "a15e91def4242b950b23f46dd2d0a18e2348c5f0c7e030b82e4acdcb301c1511",
         intel: "9429047b44478fcc6bc48ac5bca73f9064a992e3b07c6ad33a8868f5cfa6d375"

  url "https://decentr.net/files/MacOS_#{arch}_Decentr_#{version}.zip"
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
