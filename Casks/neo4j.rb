cask 'neo4j' do
  # note: "4" is not a version number, but an intrinsic part of the product name
  version '1.2.4'
  sha256 '3cd53b075027dac97745678bb73e76e9919def26a40b1c632b3314944283465c'

  url "https://neo4j.com/artifact.php?name=neo4j-desktop-offline-#{version}.dmg"
  appcast 'https://neo4j.com/download/'
  name 'Neo4j Desktop'
  homepage 'https://neo4j.com/download/'

  app 'Neo4j Desktop.app'
end
