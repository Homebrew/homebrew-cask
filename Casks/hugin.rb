cask "hugin" do
  version "2019.2.0"
  sha256 "00caa732134c3b4dedd04f3605a4a1660e6baa49f54b6bb45eb25387dbe1e419"

  url "https://downloads.sourceforge.net/hugin/Hugin-#{version}.dmg"
  name "Hugin"
  desc "Panorama photo stitcher"
  homepage "http://hugin.sourceforge.net/"

  livecheck do
    url "http://hugin.sourceforge.net/download/"
    strategy :page_match
    regex(/Hugin-(\d+(?:\.\d+)*)\.dmg/i)
  end

  suite "Hugin"
end
