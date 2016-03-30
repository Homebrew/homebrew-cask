cask 'keystore-explorer' do
  version '5.1.1'
  sha256 'd4c8ce7acbe1e0fc1e05dfbe61fd6d6de083b4cd9bb30ee604b7a7775cb62332'

  url "http://downloads.sourceforge.net/project/keystore-explorer/KSE%20#{version}/kse-#{version.delete('.')}.dmg"
  name 'KeyStore Explorer'
  homepage 'http://keystore-explorer.sourceforge.net/'
  license :gpl

  app "KeyStore Explorer #{version}.app"
end
