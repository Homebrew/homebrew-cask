cask 'keeweb' do
  version '1.15.1'
  sha256 'e9c08df636a94f54adc12118fb5491a5b084100dc1f39255ba9bc51f7a7d4dfc'

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
