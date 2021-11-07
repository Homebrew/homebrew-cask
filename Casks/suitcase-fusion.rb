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

  depends_on macos: ">= :mojave"

  app "Suitcase Fusion.app"
end
