cask 'neo4j' do
  # note: "4" is not a version number, but an intrinsic part of the product name
  version '1.2.8'
  sha256 '48dac586fe012262b9d922a77b84e2cac79596911e029e721d328ae48427dae2'

  url "https://neo4j.com/artifact.php?name=neo4j-desktop-#{version}.dmg"
  appcast 'https://neo4j.com/download/'
  name 'Neo4j Desktop'
  homepage 'https://neo4j.com/download/'

  app 'Neo4j Desktop.app'
end
