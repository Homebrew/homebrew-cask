cask 'neo4j' do
  # note: "4" is not a version number, but an intrinsic part of the product name
  version '1.0.24'
  sha256 'aa5266f408d647276cd3a2a72ebd7dd626ac94fa71384f8553da43230e357725'

  url "https://neo4j.com/artifact.php?name=neo4j-desktop-offline-#{version}.dmg"
  name 'Neo4j Desktop'
  homepage 'https://neo4j.com/download/'

  app 'Neo4j Desktop.app'
end
