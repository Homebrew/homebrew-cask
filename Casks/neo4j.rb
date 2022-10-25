cask "neo4j" do
  # NOTE: "4" is not a version number, but an intrinsic part of the product name
  version "1.5.2"
  sha256 "52b73a7ef11a6f93a17f8dd8bda43d6ab13f37a40487b2c6aac814d885c075b8"

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
