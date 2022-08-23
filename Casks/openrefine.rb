cask "openrefine" do
  version "3.6.1"
  sha256 "4afa441e9aad4b07b637b532a89630ee65345872b00de1c885204d0326ebfc34"

  url "https://oss.sonatype.org/service/local/artifact/maven/content?r=releases&g=org.openrefine&a=openrefine&v=#{version}&c=mac&p=dmg",
      verified: "oss.sonatype.org/service/local/artifact/maven/"
  name "OpenRefine"
  desc "Tool for working with messy data (previously Google Refine)"
  homepage "https://openrefine.org/"

  livecheck do
    url "https://openrefine.org/download.html"
    regex(/href=.*?openrefine.*?(\d+(?:\.\d+)+).*?dmg/i)
  end

  app "OpenRefine.app"
end
