cask "scidavis" do
  version "2.7.1"
  sha256 "44029e5faeea836ef17922c1cdd58903158e744035e14ef692f07a57f8c62b15"

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
