cask "suitcase-fusion" do
  version "21.2.0"
  sha256 "71f73a1338e5776f0ecedf89bbb1b1925982769b5e30461e075a36ae7bd09465"

  url "https://bin.extensis.com/SuitcaseFusion-M-#{version.dots_to_hyphens}.dmg"
  appcast "https://www.extensis.com/support/suitcase-fusion-#{version.major}/release-notes/"
  name "Extensis Suitcase Fusion"
  homepage "https://www.extensis.com/suitcase-fusion/"

  depends_on macos: ">= :high_sierra"

  app "Suitcase Fusion.app"
end
