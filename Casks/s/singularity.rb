cask "singularity" do
  version "1.8.9.8709"
  sha256 "ef40901d39389588be972b6f72ec58d1a4f0d982dbb87f0ea1eeeab1d388763b"

  url "https://bitbucket.org/router_gray/singularityviewer/downloads/Singularity_Alpha_#{version.dots_to_underscores}_x86_64.dmg",
      verified: "bitbucket.org/router_gray/singularityviewer/"
  name "Singularity Viewer"
  desc "Client for Second Life and OpenSim"
  homepage "https://www.singularityviewer.org/"

  livecheck do
    url "https://www.singularityviewer.org/downloads/"
    regex(/Singularity[._-]?Alpha[._-]?v?(\d+(?:[._]\d+)+)[._-]?x86_64\.dmg/i)
    strategy :page_match do |page, regex|
      match = page.match(regex)
      next if match.blank?

      match[1].tr("_", ".")
    end
  end

  app "SingularityAlpha.app"

  caveats do
    requires_rosetta
  end
end
