cask "suitcase-fusion" do
  version "22.0.4"
  sha256 "97fd5402be70bb558e600275d0c9a046bca1e884fd3d2c3c9cc6c2c4407f9a7c"

  url "https://bin.extensis.com/SuitcaseFusion-M-#{version.dots_to_hyphens}.dmg"
  name "Extensis Suitcase Fusion"
  desc "Font manager"
  homepage "https://www.extensis.com/suitcase-fusion/"

  livecheck do
    url "https://www.extensis.com/support/suitcase-fusion-#{version.major}/release-notes/"
    regex(/Current\s*version:\s*(\d+(?:\.\d+)*)/i)
  end

  auto_updates true
  depends_on macos: ">= :mojave"

  app "Suitcase Fusion.app"

  zap trash: [
    "~/Library/Caches/com.extensis.SuitcaseFusion",
    "~/Library/HTTPStorages/com.extensis.SuitcaseFusion",
    "~/Library/HTTPStorages/com.extensis.SuitcaseFusion.binarycookies",
    "~/Library/Preferences/com.extensis.SuitcaseFusion.plist",
    "~/Library/Saved Application State/com.extensis.SuitcaseFusion.savedState",
  ]
end
