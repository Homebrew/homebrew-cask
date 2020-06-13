cask 'keeweb' do
  version '1.15.3'
  sha256 '36a51ee456ebfebd795c09949ca2d85ea5cf01cb05556cd29135adbd65e2c27c'

  # github.com/keeweb/keeweb/ was verified as official when first introduced to the cask
  url "https://github.com/keeweb/keeweb/releases/download/v#{version}/KeeWeb-#{version}.mac.dmg"
  appcast 'https://github.com/keeweb/keeweb/releases.atom'
  name 'KeeWeb'
  homepage 'https://keeweb.info/'

  auto_updates true

  app 'KeeWeb.app'

  uninstall_preflight do
    set_ownership "#{appdir}/KeeWeb.app"
  end
end
