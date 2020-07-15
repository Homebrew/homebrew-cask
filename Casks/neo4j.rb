cask 'neo4j' do
  # note: "4" is not a version number, but an intrinsic part of the product name
  version '1.3.2'
  sha256 'd68d10cb7141c76e6ea6053a1e7c0b4c9b841915c02f9d6a500dd538f8e217e4'

  url "https://neo4j.com/artifact.php?name=neo4j-desktop-#{version}.dmg"
  appcast 'https://neo4j.com/download/'
  name 'Neo4j Desktop'
  homepage 'https://neo4j.com/download/'

  app 'Neo4j Desktop.app'
end
