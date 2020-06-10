cask 'neo4j' do
  # note: "4" is not a version number, but an intrinsic part of the product name
  version '1.2.9'
  sha256 '2e26dfe20e98286dd7871235c39d8a077d9f53e2971997731e0592a60313b16a'

  url "https://neo4j.com/artifact.php?name=neo4j-desktop-#{version}.dmg"
  appcast 'https://neo4j.com/download/'
  name 'Neo4j Desktop'
  homepage 'https://neo4j.com/download/'

  app 'Neo4j Desktop.app'
end
