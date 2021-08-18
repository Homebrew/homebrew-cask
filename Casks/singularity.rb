cask "singularity" do
  version "1.8.9.8709"
  sha256 "002597a1d7386ff1b505416476fce812037a38c61bd152212fd758db943de40c"

  url "https://bitbucket.org/router_gray/singularityviewer/downloads/Singularity_Alpha_#{version.dots_to_underscores}_x86_64.dmg",
      verified: "bitbucket.org/router_gray/singularityviewer/"
  name "Singularity Viewer"
  desc "Client for Second Life and OpenSim"
  homepage "http://www.singularityviewer.org/"

  livecheck do
    url "http://www.singularityviewer.org/downloads"
    strategy :page_match do |page|
      v = page[/Singularity[._-]?Alpha[._-]?(\d+(?:\_\d+)*)[._-]?x86_64\.dmg/i, 1]
      v.tr("_", ".")
    end
  end

  app "Singularity.app"
end
