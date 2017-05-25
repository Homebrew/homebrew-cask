cask 'keeweb' do
  version '1.5.2'
  sha256 'b61a6fc649203c4c1b815cf2722a357005b7cafeda650788443dfe6090cc585d'

  # github.com/keeweb/keeweb was verified as official when first introduced to the cask
  url "https://github.com/keeweb/keeweb/releases/download/v#{version}/KeeWeb-#{version}.mac.dmg"
  appcast 'https://github.com/keeweb/keeweb/releases.atom',
          checkpoint: 'e63815d4197f194eef78478a4b15091e424489ffca4767ed9f242319f1f5dc1e'
  name 'KeeWeb'
  homepage 'https://keeweb.info/'

  auto_updates true

  app 'KeeWeb.app'
end
