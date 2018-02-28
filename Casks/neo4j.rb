cask 'neo4j' do
  # note: "4" is not a version number, but an intrinsic part of the product name
  version '1.0.15'
  sha256 '706d7402316a6044579ee726b7234f2844a5e26426c40463316a0b7aa3a01c58'

  url "https://neo4j.com/artifact.php?name=neo4j-desktop-offline-#{version}.dmg"
  name 'Neo4j Desktop'
  homepage 'https://neo4j.com/download/'

  app 'Neo4j Desktop.app'
end
