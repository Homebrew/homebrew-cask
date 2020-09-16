cask "neo4j" do
  # note: "4" is not a version number, but an intrinsic part of the product name
  version "1.3.4"
  sha256 "811b9f6daa1afee4a13ab0526ef0a3c8c6a49794d14ae328d49453a3e035c044"

  url "https://neo4j.com/artifact.php?name=neo4j-desktop-#{version}.dmg"
  appcast "https://neo4j.com/download/"
  name "Neo4j Desktop"
  homepage "https://neo4j.com/download/"

  app "Neo4j Desktop.app"
end
