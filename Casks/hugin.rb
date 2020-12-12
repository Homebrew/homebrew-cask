cask "hugin" do
  version "2019.2.0"
  sha256 "00caa732134c3b4dedd04f3605a4a1660e6baa49f54b6bb45eb25387dbe1e419"

  # downloads.sourceforge.net/hugin/ was verified as official when first introduced to the cask
  url "https://downloads.sourceforge.net/hugin/Hugin-#{version}.dmg"
  appcast "https://sourceforge.net/projects/hugin/rss"
  name "Hugin"
  desc "Cross-platform panorama photo stitcher"
  homepage "https://hugin.sourceforge.io/"

  suite "Hugin"
end
