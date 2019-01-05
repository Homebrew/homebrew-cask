cask 'neo4j' do
  # note: "4" is not a version number, but an intrinsic part of the product name
  version '1.1.13'
  sha256 'e14f9332218f4d6e2ff292e3b036bde2f48f5fc63250319abedaa47d68c1c7c2'

  url "https://neo4j.com/artifact.php?name=neo4j-desktop-offline-#{version}.dmg"
  name 'Neo4j Desktop'
  homepage 'https://neo4j.com/download/'

  app 'Neo4j Desktop.app'
end
