cask "neo4j" do
  # NOTE: "4" is not a version number, but an intrinsic part of the product name
  version "1.4.5"
  sha256 "7d0a7fc7284ca55e58ae3560a7e7946bb2cfac78c3459cbb65beda7e76b033ff"

  url "https://neo4j.com/artifact.php?name=neo4j-desktop-#{version}.dmg"
  name "Neo4j Desktop"
  desc "Developer IDE or Management Environment for Neo4j instances"
  homepage "https://neo4j.com/download/"

  livecheck do
    url "https://neo4j.com/download-center/#desktop"
    strategy :page_match
    regex(%r{href=.*?/neo4j-desktop/.*?flavour=osx.*?release=(\d+(?:\.\d+)*)}i)
  end

  depends_on macos: ">= :yosemite"

  app "Neo4j Desktop.app"
end
