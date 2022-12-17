cask "neo4j" do
  # NOTE: "4" is not a version number, but an intrinsic part of the product name
  version "1.5.6"
  sha256 "2c49e9d42e5839c0f9cbe56d82098b0b5300ebf728cd6e3d955a08bf030cca4e"

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
