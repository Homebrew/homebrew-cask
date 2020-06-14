cask 'keeweb' do
  version '1.15.4'
  sha256 '152b7e213feb124a7a7507ae10022f2c02e5eca8618abc6e3bdc9a46251d4d75'

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
