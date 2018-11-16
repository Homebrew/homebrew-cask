cask 'neo4j' do
  # note: "4" is not a version number, but an intrinsic part of the product name
  version '1.1.10'
  sha256 'c9e25fe5c8d6631eea9e7880b1421da772a754795d24eb903f51ef9e4c3b97d6'

  url "https://neo4j.com/artifact.php?name=neo4j-desktop-offline-#{version}.dmg"
  name 'Neo4j Desktop'
  homepage 'https://neo4j.com/download/'

  app 'Neo4j Desktop.app'
end
