cask 'keeweb' do
  version '1.15.2'
  sha256 'bb258a195caf34e69ac72a8b47b19ff2438168d61ecd3322f60f3b357a65c3ea'

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
