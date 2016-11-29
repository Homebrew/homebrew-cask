cask 'keystore-explorer' do
  version '5.1.1'
  sha256 'd4c8ce7acbe1e0fc1e05dfbe61fd6d6de083b4cd9bb30ee604b7a7775cb62332'

  url "https://downloads.sourceforge.net/keystore-explorer/KSE%20#{version}/kse-#{version.no_dots}.dmg"
  appcast 'https://sourceforge.net/projects/keystore-explorer/rss',
          checkpoint: '8a65b0bf9eec051a535dd47b37d59657d46b74ade7b306feaffc30ce56ad2f7e'
  name 'KeyStore Explorer'
  homepage 'http://keystore-explorer.sourceforge.net/'

  app "KeyStore Explorer #{version}.app"
end
