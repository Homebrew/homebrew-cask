cask 'neo4j' do
  # note: "4" is not a version number, but an intrinsic part of the product name
  version '1.0.18'
  sha256 'e1e8657c8adb661a01ea47534d0fe9e0c200c58e4f475e6788b1d6c967af74c6'

  url "https://neo4j.com/artifact.php?name=neo4j-desktop-offline-#{version}.dmg"
  name 'Neo4j Desktop'
  homepage 'https://neo4j.com/download/'

  app 'Neo4j Desktop.app'
end
