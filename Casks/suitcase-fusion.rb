cask "suitcase-fusion" do
  version "21.2.1"
  sha256 "851db1e4030aee1fe82e0f2c2a411266ada957f2f9682ea4c91c455967b767d4"

  url "https://bin.extensis.com/SuitcaseFusion-M-#{version.dots_to_hyphens}.dmg"
  appcast "https://www.extensis.com/support/suitcase-fusion-#{version.major}/release-notes/"
  name "Extensis Suitcase Fusion"
  homepage "https://www.extensis.com/suitcase-fusion/"

  depends_on macos: ">= :high_sierra"

  app "Suitcase Fusion.app"
end
