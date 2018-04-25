cask 'neo4j' do
  # note: "4" is not a version number, but an intrinsic part of the product name
  version '1.0.22'
  sha256 'c7f307258d170e340f5cf301af1d70b442cd4192ef4519850b28e60093016941'

  url "https://neo4j.com/artifact.php?name=neo4j-desktop-offline-#{version}.dmg"
  name 'Neo4j Desktop'
  homepage 'https://neo4j.com/download/'

  app 'Neo4j Desktop.app'
end
