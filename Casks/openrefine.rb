cask "openrefine" do
  version "3.7.0"
  sha256 "bd602034ff26aa65a2e416ce349051515ecf6f17597cb4a45e79a7f0f99d6618"

  url "https://oss.sonatype.org/service/local/artifact/maven/content?r=releases&g=org.openrefine&a=openrefine&v=#{version}&c=mac&p=dmg",
      verified: "oss.sonatype.org/service/local/artifact/maven/"
  name "OpenRefine"
  desc "Tool for working with messy data (previously Google Refine)"
  homepage "https://openrefine.org/"

  livecheck do
    url "https://github.com/OpenRefine/OpenRefine"
    strategy :github_latest
  end

  app "OpenRefine.app"
end
