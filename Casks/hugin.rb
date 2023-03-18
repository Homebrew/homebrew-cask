cask "hugin" do
  version "2019.2.0"
  sha256 "00caa732134c3b4dedd04f3605a4a1660e6baa49f54b6bb45eb25387dbe1e419"

  url "https://downloads.sourceforge.net/hugin/Hugin-#{version}.dmg"
  name "Hugin"
  desc "Panorama photo stitcher"
  homepage "https://hugin.sourceforge.net/"

  livecheck do
    url "https://hugin.sourceforge.net/download/"
    regex(/Hugin-(\d+(?:\.\d+)*)\.dmg/i)
    strategy :page_match
  end

  suite "Hugin"
end
