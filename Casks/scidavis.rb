cask "scidavis" do
  version "1.26"
  sha256 "bc49df3fc712cdcfee7804bf5e6b6e3d378e4178e07e6f664e05795b93829a1b"

  # downloads.sourceforge.net/scidavis/ was verified as official when first introduced to the cask
  url "https://downloads.sourceforge.net/scidavis/scidavis-#{version}-mac-dist.dmg"
  appcast "https://sourceforge.net/projects/scidavis/rss.xml"
  name "scidavis"
  homepage "https://scidavis.sourceforge.io/"

  depends_on macos: ">= :yosemite"

  app "scidavis.app"
end
