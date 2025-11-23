cask "scidavis" do
  version "2.8"
  sha256 "921b597237a97b3a734cb9b50aaa233822856c4fa90e42f90a7b25e8beaa6b23"

  url "https://downloads.sourceforge.net/scidavis/scidavis-#{version}-mac-dist.dmg"
  name "SciDAVis"
  desc "Application for scientific data analysis and visualization"
  homepage "https://scidavis.sourceforge.net/"

  livecheck do
    url "https://sourceforge.net/projects/scidavis/rss?path=/SciDAVis"
    regex(%r{url=.*?/scidavis[._-]v?(\d+(?:\.\d+)+)[._-]mac[._-]dist\.dmg}i)
  end

  app "scidavis.app"

  zap trash: [
    "~/.config/SciDAVis",
    "~/Library/Saved Application State/net.sourceforge.scidavis.savedState",
  ]

  caveats do
    requires_rosetta
  end
end
