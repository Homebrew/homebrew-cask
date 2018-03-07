cask 'neo4j' do
  # note: "4" is not a version number, but an intrinsic part of the product name
  version '1.0.17'
  sha256 'c12eaf9d457b13790881781696d4b507051dd4166fed1a652060e81311d8d0c1'

  url "https://neo4j.com/artifact.php?name=neo4j-desktop-offline-#{version}.dmg"
  name 'Neo4j Desktop'
  homepage 'https://neo4j.com/download/'

  app 'Neo4j Desktop.app'
end
