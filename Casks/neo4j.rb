cask 'neo4j' do
  # note: "4" is not a version number, but an intrinsic part of the product name
  version '1.3.1'
  sha256 'f4a5fc6383cf5615ccda425a95d40b70a3e0d780ae126e8ea571a675e6413393'

  url "https://neo4j.com/artifact.php?name=neo4j-desktop-#{version}.dmg"
  appcast 'https://neo4j.com/download/'
  name 'Neo4j Desktop'
  homepage 'https://neo4j.com/download/'

  app 'Neo4j Desktop.app'
end
