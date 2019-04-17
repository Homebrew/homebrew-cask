cask 'neo4j' do
  # note: "4" is not a version number, but an intrinsic part of the product name
  version '1.1.20'
  sha256 '800671362cc7684ecc459398e8684de27a5bcf4db0580d2a17165a8fd662aae5'

  url "https://neo4j.com/artifact.php?name=neo4j-desktop-offline-#{version}.dmg"
  name 'Neo4j Desktop'
  homepage 'https://neo4j.com/download/'

  app 'Neo4j Desktop.app'
end
