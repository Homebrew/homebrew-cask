cask 'neo4j' do
  # note: "4" is not a version number, but an intrinsic part of the product name
  version '1.2.5'
  sha256 '5f52b93aa87e74a377efaaa2160a7c1a9431e23044a76ea5b5cee5fcc6fb5c7b'

  url "https://neo4j.com/artifact.php?name=neo4j-desktop-#{version}.dmg"
  appcast 'https://neo4j.com/download/'
  name 'Neo4j Desktop'
  homepage 'https://neo4j.com/download/'

  app 'Neo4j Desktop.app'
end
