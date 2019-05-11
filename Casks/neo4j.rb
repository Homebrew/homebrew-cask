cask 'neo4j' do
  # note: "4" is not a version number, but an intrinsic part of the product name
  version '1.1.22'
  sha256 '62a9d79b9d146f2a4445a9625d4ece817ea7403341384cf295cd7424a24443bf'

  url "https://neo4j.com/artifact.php?name=neo4j-desktop-offline-#{version}.dmg"
  name 'Neo4j Desktop'
  homepage 'https://neo4j.com/download/'

  app 'Neo4j Desktop.app'
end
