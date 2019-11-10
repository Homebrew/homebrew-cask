cask 'neo4j' do
  # note: "4" is not a version number, but an intrinsic part of the product name
  version '1.2.3'
  sha256 'eb14ee9d6aa9eb1f9c9e66590ea2a6ebcdb0ff3d7b92fc842a542bf163d75e2c'

  url "https://neo4j.com/artifact.php?name=neo4j-desktop-offline-#{version}.dmg"
  appcast 'https://neo4j.com/download/'
  name 'Neo4j Desktop'
  homepage 'https://neo4j.com/download/'

  app 'Neo4j Desktop.app'
end
