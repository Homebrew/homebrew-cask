cask 'neo4j' do
  # note: "4" is not a version number, but an intrinsic part of the product name
  version '1.2.1'
  sha256 'feb633c5e1ea23de6e4c5fa30b6e15475cdf6e051518129b435a85c1800c27c7'

  url "https://neo4j.com/artifact.php?name=neo4j-desktop-offline-#{version}.dmg"
  appcast 'https://neo4j.com/download/'
  name 'Neo4j Desktop'
  homepage 'https://neo4j.com/download/'

  app 'Neo4j Desktop.app'
end
