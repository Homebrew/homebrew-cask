cask "scidavis" do
  version "2.7"
  sha256 "d248cd2aea443ada2f450e952527edef7ba8cd3aa1d01250ee706f682180f79c"

  url "https://downloads.sourceforge.net/scidavis/scidavis-#{version}-mac-dist.dmg",
      verified: "downloads.sourceforge.net/scidavis/"
  name "SciDAVis"
  desc "Application for scientific data analysis and visualization"
  homepage "https://scidavis.sourceforge.io/"

  livecheck do
    url "https://sourceforge.net/projects/scidavis/rss.xml"
    regex(%r{/scidavis[._-]v?(\d+(?:\.\d+)+)[._-]mac[._-]dist\.dmg}i)
  end

  depends_on macos: ">= :yosemite"

  app "scidavis.app"
end
