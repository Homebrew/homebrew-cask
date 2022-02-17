cask "idefrag" do
  if MacOS.version <= :el_capitan
    version "5.1.3"
    sha256 "4b695c04f491b8f9f60a1fb43836164960f7d95f82aaa38d1e3b7dd4eacd7d5c"
  else
    version "5.3.1"
    sha256 "b13be0fa76805e6ae363c7a8be370ed2c1865b0ac675ac77f3619d0c1dfe5cc3"
  end

  url "https://coriolis-systems.com/downloads/iDefrag-#{version}.dmg"
  name "iDefrag"
  desc "Disk optimizer and defragmentation tool"
  homepage "https://coriolis-systems.com/iDefrag/"

  livecheck do
    url :homepage
    regex(%r{href=.*?/iDefrag[._-]v?(\d+(?:\.\d+)+)\.dmg}i)
  end

  depends_on macos: "<= :high_sierra"

  app "iDefrag.app"

  caveats do
    discontinued
    free_license "https://coriolis-systems.com/downloads/iDefrag.png"
  end
end
