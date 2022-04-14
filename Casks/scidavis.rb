cask "scidavis" do
  version "2.8"
  sha256 "921b597237a97b3a734cb9b50aaa233822856c4fa90e42f90a7b25e8beaa6b23"

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
