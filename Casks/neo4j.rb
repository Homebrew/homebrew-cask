cask "neo4j" do
  # note: "4" is not a version number, but an intrinsic part of the product name
  version "1.3.10"
  sha256 "9aa21a463ca7efc313f1465a388a069dce3e1e505a4fc7949e2bbca1e4088dab"

  url "https://neo4j.com/artifact.php?name=neo4j-desktop-#{version}.dmg"
  appcast "https://neo4j.com/download/"
  name "Neo4j Desktop"
  homepage "https://neo4j.com/download/"

  app "Neo4j Desktop.app"
end
