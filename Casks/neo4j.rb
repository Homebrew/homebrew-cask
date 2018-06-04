cask 'neo4j' do
  # note: "4" is not a version number, but an intrinsic part of the product name
  version '1.1.3'
  sha256 'c7d89cba37bc6b133739d4287d1197160921ac5509126955b3d16585ec6503f9'

  url "https://neo4j.com/artifact.php?name=neo4j-desktop-offline-#{version}.dmg"
  name 'Neo4j Desktop'
  homepage 'https://neo4j.com/download/'

  app 'Neo4j Desktop.app'
end
