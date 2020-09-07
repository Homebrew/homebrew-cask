cask "neo4j" do
  # note: "4" is not a version number, but an intrinsic part of the product name
  version "1.3.5"
  sha256 "04bb33215358632ddd1a1a4497781c2487dc30f133a9021a044da6a7160285fa"

  url "https://neo4j.com/artifact.php?name=neo4j-desktop-#{version}.dmg"
  appcast "https://neo4j.com/download/"
  name "Neo4j Desktop"
  homepage "https://neo4j.com/download/"

  app "Neo4j Desktop.app"
end
