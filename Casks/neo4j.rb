cask "neo4j" do
  # NOTE: "4" is not a version number, but an intrinsic part of the product name
  version "1.4.11"
  sha256 "816e511f47a1bd0a2a06857dc4cc5a68d613c23cfac8509484c7701d983272a3"

  url "https://dist.neo4j.org/neo4j-desktop/mac/Neo4j%20Desktop-#{version}.dmg",
      verified: "dist.neo4j.org/neo4j-desktop/mac/"
  name "Neo4j Desktop"
  desc "Developer IDE or Management Environment for Neo4j instances"
  homepage "https://neo4j.com/download/"

  livecheck do
    url "https://neo4j.com/download-center/#desktop"
    regex(%r{href=.*?/neo4j-desktop/.*?flavour=osx.*?release=(\d+(?:\.\d+)+)}i)
  end

  depends_on macos: ">= :yosemite"

  app "Neo4j Desktop.app"
end
