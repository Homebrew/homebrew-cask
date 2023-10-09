cask "decentr" do
  arch arm: "arm", intel: "x86"

  version "1.5.4"
  sha256 arm:   "30a7fbf1f8579bc52dc21aa3babb24a70ffa51faedfee87f8936da7762295a96",
         intel: "8a9698bb5d554b597a286befa357bdcf24d2f4bf4667304f90a5860e367db281"

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
