cask "suitcase-fusion" do
  version "21.4.1"
  sha256 "962677943d73133a703e8f36b6d2121889608926c98e8b04ff2f29ebf6da70fc"

  url "https://bin.extensis.com/SuitcaseFusion-M-#{version.dots_to_hyphens}.dmg"
  name "Extensis Suitcase Fusion"
  homepage "https://www.extensis.com/suitcase-fusion/"

  livecheck do
    url "https://www.extensis.com/support/suitcase-fusion-#{version.major}/release-notes/"
    strategy :page_match
    regex(/Current\s*version:\s*(\d+(?:\.\d+)*)/i)
  end

  depends_on macos: ">= :high_sierra"

  app "Suitcase Fusion.app"
end
