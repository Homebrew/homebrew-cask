cask "neo4j" do
  # NOTE: "4" is not a version number, but an intrinsic part of the product name
  version "1.5.0"
  sha256 "60a33aa662a84cee705c61403adf3e20c9617509c1be43fd74e8436552aee28f"

  url "https://dist.neo4j.org/neo4j-desktop/mac/Neo4j%20Desktop-#{version}.dmg",
      verified: "dist.neo4j.org/neo4j-desktop/mac/"
  name "Neo4j Desktop"
  desc "Developer IDE or Management Environment for Neo4j instances"
  homepage "https://neo4j.com/download/"

  livecheck do
    url "https://neo4j.com/download-center/#desktop"
    regex(%r{href=.*?/neo4j-desktop/.*?flavour=osx.*?release=(\d+(?:\.\d+)+)}i)
  end

  app "Neo4j Desktop.app"
end
