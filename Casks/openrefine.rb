cask "openrefine" do
  version "3.6.0"
  sha256 "d122abbf2e1efedce67bd50e5c6242efaa4d6ebe061c742b1ec5df5d253b7e88"

  url "https://oss.sonatype.org/service/local/artifact/maven/content?r=releases&g=org.openrefine&a=openrefine&v=#{version}&c=mac&p=dmg",
      verified: "oss.sonatype.org/service/local/artifact/maven/"
  name "OpenRefine"
  desc "Tool for working with messy data (previously Google Refine)"
  homepage "https://openrefine.org/"

  livecheck do
    url :url
    strategy :github_latest
  end

  app "OpenRefine.app"
end
