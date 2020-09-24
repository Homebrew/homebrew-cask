cask "neo4j" do
  # note: "4" is not a version number, but an intrinsic part of the product name
  version "1.3.8"
  sha256 "ea91245e122094864d7265f69511f9f8cd96d873b6c9257964a9c766a1f65283"

  url "https://neo4j.com/artifact.php?name=neo4j-desktop-#{version}.dmg"
  appcast "https://neo4j.com/download/"
  name "Neo4j Desktop"
  homepage "https://neo4j.com/download/"

  app "Neo4j Desktop.app"
end
