cask "suitcase-fusion" do
  version "21.4.4"
  sha256 "849ada27d872dfa2ff535965476877fe9c147c8b49533d9e675235ac4530a361"

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
