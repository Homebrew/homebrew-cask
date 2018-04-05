cask 'neo4j' do
  # note: "4" is not a version number, but an intrinsic part of the product name
  version '1.0.20'
  sha256 'e5095cc3e701cfbc60c0e95c6b6d0c76daf0f621dbe8aed01c3f1e2f6b6e0a0c'

  url "https://neo4j.com/artifact.php?name=neo4j-desktop-offline-#{version}.dmg"
  name 'Neo4j Desktop'
  homepage 'https://neo4j.com/download/'

  app 'Neo4j Desktop.app'
end
