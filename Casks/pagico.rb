cask "pagico" do
  version "9.6.20201124"
  sha256 "f0d3572a8f716e7d5d52edd46fb510c29a0a4b9d210418a1bc16c2084779acdc"

  url "https://www.pagico.com/downloads/Pagico_macOS_r#{version.patch}.dmg"
  appcast "https://www.pagico.com/api/pagico#{version.major}.mac.xml",
          must_contain: version.patch
  name "Pagico"
  homepage "https://www.pagico.com/"

  depends_on macos: ">= :sierra"

  app "Pagico.app"
end
