cask "openrefine" do
  version "3.6.2"
  sha256 "460e801446065d8ef25388d18c65aa0ecd3b889175ebe5eecb69179282be35b1"

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
