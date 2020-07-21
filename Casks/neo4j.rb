cask 'neo4j' do
  # note: "4" is not a version number, but an intrinsic part of the product name
  version '1.3.3'
  sha256 'd59af2d7ddaaf417a657fa70dbd8e87657e4cef503faca2d4c34bfd727c43556'

  url "https://neo4j.com/artifact.php?name=neo4j-desktop-#{version}.dmg"
  appcast 'https://neo4j.com/download/'
  name 'Neo4j Desktop'
  homepage 'https://neo4j.com/download/'

  app 'Neo4j Desktop.app'
end
